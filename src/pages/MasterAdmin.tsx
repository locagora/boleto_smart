import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { supabase } from "@/integrations/supabase/client";
import { toast } from "sonner";
import { Card } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Pencil, Trash2, ArrowLeft } from "lucide-react";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import { FranquiaFormMaster } from "@/components/forms/FranquiaFormMaster";
import { FranquiaEditDialog } from "@/components/forms/FranquiaEditDialog";
import { DeleteConfirmDialog } from "@/components/DeleteConfirmDialog";
import { UserNav } from "@/components/UserNav";
import { Badge } from "@/components/ui/badge";

interface Franquia {
  id: string;
  nome: string;
  razao_social: string;
  cnpj: string;
  endereco: string;
  email: string;
  telefone: string;
  webhook: string | null;
  master_regional_id: string | null;
  ativo: boolean;
}

export default function MasterAdmin() {
  const navigate = useNavigate();
  const [loading, setLoading] = useState(true);
  const [isMasterRegional, setIsMasterRegional] = useState(false);
  const [masterRegionalId, setMasterRegionalId] = useState<string | null>(null);
  const [franquias, setFranquias] = useState<Franquia[]>([]);
  const [editingFranquia, setEditingFranquia] = useState<Franquia | null>(null);
  const [deletingFranquia, setDeletingFranquia] = useState<Franquia | null>(null);

  useEffect(() => {
    checkMasterRegional();
  }, []);

  const checkMasterRegional = async () => {
    try {
      const { data: { session } } = await supabase.auth.getSession();
      
      if (!session) {
        navigate("/auth");
        return;
      }

      // Check if user has master_regional role
      const { data: roleData, error: roleError } = await supabase
        .from("user_roles")
        .select("role")
        .eq("user_id", session.user.id)
        .eq("role", "master_regional")
        .maybeSingle();

      if (roleError) throw roleError;

      if (!roleData) {
        toast.error("Acesso negado. Apenas Master Regionais podem acessar esta página.");
        navigate("/");
        return;
      }

      // Get the master_regional_id based on user's email
      const { data: masterData, error: masterError } = await supabase
        .from("master_regionais")
        .select("id")
        .eq("email", session.user.email)
        .maybeSingle();

      if (masterError) throw masterError;

      if (!masterData) {
        toast.error("Master Regional não encontrado.");
        navigate("/");
        return;
      }

      setMasterRegionalId(masterData.id);
      setIsMasterRegional(true);
      fetchFranquias(masterData.id);
    } catch (error: any) {
      console.error("Error checking master regional:", error);
      toast.error("Erro ao verificar permissões");
      navigate("/");
    } finally {
      setLoading(false);
    }
  };

  const fetchFranquias = async (masterId: string) => {
    try {
      const { data, error } = await supabase
        .from("franquias")
        .select("*")
        .eq("master_regional_id", masterId)
        .order("created_at", { ascending: false });

      if (error) throw error;
      setFranquias(data || []);
    } catch (error: any) {
      toast.error("Erro ao carregar franquias");
    }
  };

  const handleDeleteFranquia = async () => {
    if (!deletingFranquia) return;

    try {
      // Check if franquia has any payments
      const { data: payments, error: paymentsError } = await supabase
        .from("payments")
        .select("id")
        .eq("franquia_id", deletingFranquia.id)
        .limit(1);

      if (paymentsError) throw paymentsError;

      if (payments && payments.length > 0) {
        toast.error("Não é possível excluir. Esta franquia possui cobranças vinculadas.");
        setDeletingFranquia(null);
        return;
      }

      // Check if franquia has any customers
      const { data: customers, error: customersError } = await supabase
        .from("customers")
        .select("id")
        .eq("franquia_id", deletingFranquia.id)
        .limit(1);

      if (customersError) throw customersError;

      if (customers && customers.length > 0) {
        toast.error("Não é possível excluir. Esta franquia possui clientes vinculados.");
        setDeletingFranquia(null);
        return;
      }

      const { error } = await supabase
        .from("franquias")
        .delete()
        .eq("id", deletingFranquia.id);

      if (error) throw error;

      toast.success("Franquia excluída com sucesso!");
      if (masterRegionalId) {
        fetchFranquias(masterRegionalId);
      }
    } catch (error: any) {
      toast.error(error.message || "Erro ao excluir franquia");
    } finally {
      setDeletingFranquia(null);
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <p className="text-muted-foreground">Carregando...</p>
      </div>
    );
  }

  if (!isMasterRegional || !masterRegionalId) {
    return null;
  }

  return (
    <div className="min-h-screen bg-background">
      <header className="border-b bg-card">
        <div className="container mx-auto px-4 py-4 flex justify-between items-center">
          <div className="flex items-center gap-4">
            <Button
              variant="outline"
              size="sm"
              onClick={() => navigate("/dashboard")}
              className="gap-2"
            >
              <ArrowLeft className="h-4 w-4" />
              Voltar ao Relatório
            </Button>
            <h1 className="text-2xl font-bold text-foreground">Painel Master Regional</h1>
          </div>
          <UserNav />
        </div>
      </header>

      <main className="container mx-auto px-4 py-8">
        <div className="grid gap-8 lg:grid-cols-3">
          {/* Form to add new franquia */}
          <Card className="p-6 lg:col-span-1">
            <h2 className="text-xl font-semibold mb-6">Cadastrar Nova Franquia</h2>
            <FranquiaFormMaster 
              masterRegionalId={masterRegionalId}
              onSuccess={() => fetchFranquias(masterRegionalId)} 
            />
          </Card>

          {/* List of franquias */}
          <Card className="p-6 lg:col-span-2">
            <h2 className="text-xl font-semibold mb-6">Minhas Franquias</h2>
            
            {franquias.length === 0 ? (
              <p className="text-muted-foreground text-center py-8">
                Nenhuma franquia cadastrada ainda.
              </p>
            ) : (
              <div className="overflow-x-auto">
                <Table>
                  <TableHeader>
                    <TableRow>
                      <TableHead>Nome</TableHead>
                      <TableHead>CNPJ</TableHead>
                      <TableHead>Email</TableHead>
                      <TableHead>Telefone</TableHead>
                      <TableHead>Status</TableHead>
                      <TableHead className="text-right">Ações</TableHead>
                    </TableRow>
                  </TableHeader>
                  <TableBody>
                    {franquias.map((franquia) => (
                      <TableRow key={franquia.id}>
                        <TableCell className="font-medium">{franquia.nome}</TableCell>
                        <TableCell>{franquia.cnpj}</TableCell>
                        <TableCell>{franquia.email}</TableCell>
                        <TableCell>{franquia.telefone}</TableCell>
                        <TableCell>
                          <Badge className={franquia.ativo ? "bg-green-500 hover:bg-green-600" : "bg-amber-500 hover:bg-amber-600"}>
                            {franquia.ativo ? "Ativa" : "Aguardando Pagamento"}
                          </Badge>
                        </TableCell>
                        <TableCell className="text-right">
                          <div className="flex justify-end gap-2">
                            <Button
                              variant="ghost"
                              size="sm"
                              onClick={() => setEditingFranquia(franquia)}
                            >
                              <Pencil className="h-4 w-4" />
                            </Button>
                            <Button
                              variant="ghost"
                              size="sm"
                              onClick={() => setDeletingFranquia(franquia)}
                              className="text-destructive hover:text-destructive"
                            >
                              <Trash2 className="h-4 w-4" />
                            </Button>
                          </div>
                        </TableCell>
                      </TableRow>
                    ))}
                  </TableBody>
                </Table>
              </div>
            )}
          </Card>
        </div>
      </main>

      {/* Edit Dialog */}
      <FranquiaEditDialog
        open={!!editingFranquia}
        onOpenChange={(open) => !open && setEditingFranquia(null)}
        franquia={editingFranquia}
        onSuccess={() => masterRegionalId && fetchFranquias(masterRegionalId)}
      />

      {/* Delete Confirmation Dialog */}
      <DeleteConfirmDialog
        open={!!deletingFranquia}
        onOpenChange={(open) => !open && setDeletingFranquia(null)}
        onConfirm={handleDeleteFranquia}
        title="Excluir Franquia"
        description={`Tem certeza que deseja excluir a franquia "${deletingFranquia?.nome}"? Esta ação não pode ser desfeita.`}
      />
    </div>
  );
}
