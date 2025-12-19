import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { supabase } from "@/integrations/supabase/client";
import { MasterRegionalForm } from "@/components/forms/MasterRegionalForm";
import { FranquiaForm } from "@/components/forms/FranquiaForm";
import { MasterRegionalEditDialog } from "@/components/forms/MasterRegionalEditDialog";
import { FranquiaEditDialog } from "@/components/forms/FranquiaEditDialog";
import { UserRoleEditDialog } from "@/components/forms/UserRoleEditDialog";
import { DeleteConfirmDialog } from "@/components/DeleteConfirmDialog";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import {
  Tabs,
  TabsContent,
  TabsList,
  TabsTrigger,
} from "@/components/ui/tabs";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import { Button } from "@/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { toast } from "sonner";
import { Building2, Store, Pencil, Trash2, Users, ArrowLeft, CheckCircle, XCircle, Clock, UserPlus, MoreHorizontal, Key, UserX, Mail, Search } from "lucide-react";
import { Input } from "@/components/ui/input";
import { Badge } from "@/components/ui/badge";

export default function SuperAdmin() {
  const navigate = useNavigate();
  const [loading, setLoading] = useState(true);
  const [isSuperAdmin, setIsSuperAdmin] = useState(false);
  const [masterRegionais, setMasterRegionais] = useState<any[]>([]);
  const [franquias, setFranquias] = useState<any[]>([]);
  const [usersWithRoles, setUsersWithRoles] = useState<any[]>([]);
  const [pendingUsers, setPendingUsers] = useState<any[]>([]);
  const [franquiaFilter, setFranquiaFilter] = useState("");

  // Edit states
  const [editingMaster, setEditingMaster] = useState<any>(null);
  const [editingFranquia, setEditingFranquia] = useState<any>(null);

  // Delete states
  const [deletingMaster, setDeletingMaster] = useState<any>(null);
  const [deletingFranquia, setDeletingFranquia] = useState<any>(null);

  // User edit states
  const [editingUser, setEditingUser] = useState<any>(null);
  const [deletingUser, setDeletingUser] = useState<any>(null);

  useEffect(() => {
    checkSuperAdmin();
  }, []);

  const checkSuperAdmin = async () => {
    try {
      const { data: { user } } = await supabase.auth.getUser();
      
      if (!user) {
        toast.error("Você precisa estar logado");
        navigate("/auth");
        return;
      }

      const { data: roleData, error } = await supabase
        .from("user_roles")
        .select("role")
        .eq("user_id", user.id)
        .eq("role", "super_admin")
        .single();

      if (error || !roleData) {
        toast.error("Acesso negado: você não é super admin");
        navigate("/");
        return;
      }

      setIsSuperAdmin(true);
      await fetchData();
    } catch (error) {
      toast.error("Erro ao verificar permissões");
      navigate("/");
    } finally {
      setLoading(false);
    }
  };

  const fetchData = async () => {
    await Promise.all([fetchMasterRegionais(), fetchFranquias(), fetchUsersWithRoles(), fetchPendingUsers()]);
  };

  const fetchMasterRegionais = async () => {
    const { data, error } = await supabase
      .from("master_regionais")
      .select("*")
      .order("created_at", { ascending: false });

    if (error) {
      toast.error("Erro ao carregar Master Regionais");
      return;
    }

    setMasterRegionais(data || []);
  };

  const fetchFranquias = async () => {
    const { data, error } = await supabase
      .from("franquias")
      .select(`
        *,
        master_regionais (
          nome
        )
      `)
      .order("created_at", { ascending: false });

    if (error) {
      toast.error("Erro ao carregar Franquias");
      return;
    }

    setFranquias(data || []);
  };

  const fetchUsersWithRoles = async () => {
    const { data: roles, error } = await supabase
      .from("user_roles")
      .select("*")
      .order("created_at", { ascending: false });

    if (error) {
      toast.error("Erro ao carregar usuários");
      return;
    }

    // Get all masters and franquias for entity lookup
    const { data: masters } = await supabase.from("master_regionais").select("id, email, nome");
    const { data: franquiasData } = await supabase.from("franquias").select("id, email, nome");

    const mastersById = new Map((masters || []).map(m => [m.id, m.nome]));
    const franquiasById = new Map((franquiasData || []).map(f => [f.id, f.nome]));

    // Fallback: também manter por email para compatibilidade
    const mastersByEmail = new Map((masters || []).map(m => [m.email, m.nome]));
    const franquiasByEmail = new Map((franquiasData || []).map(f => [f.email, f.nome]));

    // Fetch user_entities associations (se a tabela existir)
    let userEntitiesData: { user_id: string; entity_type: string; entity_id: string }[] | null = null;
    try {
      const userEntitiesResult = await supabase
        .from('user_entities' as any)
        .select('user_id, entity_type, entity_id');

      console.log('=== USER ENTITIES DEBUG ===');
      console.log('Result:', userEntitiesResult);
      console.log('Data:', userEntitiesResult.data);
      console.log('Error:', userEntitiesResult.error);

      if (userEntitiesResult.error) {
        console.log("Error fetching user_entities:", userEntitiesResult.error.message);
      } else {
        userEntitiesData = userEntitiesResult.data as unknown as { user_id: string; entity_type: string; entity_id: string }[] | null;
      }
    } catch (e) {
      console.log("user_entities table may not exist yet:", e);
    }

    // Group entities by user_id
    const userEntitiesMap = new Map<string, { masters: string[]; franquias: string[] }>();
    for (const ue of userEntitiesData || []) {
      if (!userEntitiesMap.has(ue.user_id)) {
        userEntitiesMap.set(ue.user_id, { masters: [], franquias: [] });
      }
      const userEnts = userEntitiesMap.get(ue.user_id)!;
      if (ue.entity_type === 'master_regional') {
        const nome = mastersById.get(ue.entity_id);
        if (nome) userEnts.masters.push(nome);
      } else if (ue.entity_type === 'franquia') {
        const nome = franquiasById.get(ue.entity_id);
        if (nome) userEnts.franquias.push(nome);
      }
    }

    // Fetch user emails from Edge Function
    let authUsers: { id: string; email: string }[] = [];
    try {
      const { data: listUsersData, error: listUsersError } = await supabase.functions.invoke('list-users');
      if (!listUsersError && listUsersData?.users) {
        authUsers = listUsersData.users;
      }
    } catch (e) {
      console.error("Error fetching users from auth:", e);
    }

    const userEmailMap = new Map(authUsers.map(u => [u.id, u.email]));

    // Group roles by user_id
    const userMap = new Map<string, { user_id: string; roles: string[]; email: string; entity: string; created_at: string }>();

    for (const role of roles || []) {
      if (!userMap.has(role.user_id)) {
        userMap.set(role.user_id, {
          user_id: role.user_id,
          roles: [role.role],
          email: userEmailMap.get(role.user_id) || "",
          entity: "",
          created_at: role.created_at
        });
      } else {
        userMap.get(role.user_id)!.roles.push(role.role);
      }
    }

    // Match with entities
    const usersArray = Array.from(userMap.values());

    // For each user, build entity string based on roles
    for (const user of usersArray) {
      const entities: string[] = [];

      // Super admin - mostrar "Super Admin" como principal
      if (user.roles.includes("super_admin")) {
        entities.push("Super Admin");
      }

      // Master Regional - mostrar entidades master se tiver a role
      if (user.roles.includes("master_regional")) {
        const userEnts = userEntitiesMap.get(user.user_id);
        if (userEnts && userEnts.masters.length > 0) {
          entities.push(`Master: ${userEnts.masters.join(", ")}`);
        } else if (user.email && mastersByEmail.has(user.email)) {
          // Fallback por email
          entities.push(`Master: ${mastersByEmail.get(user.email)}`);
        }
      }

      // Franquia - mostrar entidades franquia se tiver a role
      if (user.roles.includes("franquia")) {
        const userEnts = userEntitiesMap.get(user.user_id);
        if (userEnts && userEnts.franquias.length > 0) {
          entities.push(`Franquia: ${userEnts.franquias.join(", ")}`);
        } else if (user.email && franquiasByEmail.has(user.email)) {
          // Fallback por email
          entities.push(`Franquia: ${franquiasByEmail.get(user.email)}`);
        }
      }

      // Se não tem nenhuma role conhecida
      if (entities.length === 0) {
        entities.push("N/A");
      }

      user.entity = entities.join(" | ");
    }

    setUsersWithRoles(usersArray);
  };

  const fetchPendingUsers = async () => {
    try {
      // Fetch all users from auth via Edge Function
      const { data: listUsersData, error: listUsersError } = await supabase.functions.invoke('list-users');

      if (listUsersError || !listUsersData?.users) {
        console.error("Error fetching users from auth:", listUsersError);
        return;
      }

      const authUsers: { id: string; email: string; created_at: string }[] = listUsersData.users;

      // Fetch all user_roles to know which users already have roles
      const { data: existingRoles } = await supabase
        .from("user_roles")
        .select("user_id");

      const usersWithRolesIds = new Set((existingRoles || []).map(r => r.user_id));

      // Filter users that don't have any roles
      const pending = authUsers
        .filter(u => !usersWithRolesIds.has(u.id))
        .map(u => ({
          user_id: u.id,
          email: u.email,
          created_at: u.created_at || new Date().toISOString()
        }));

      setPendingUsers(pending);
    } catch (error) {
      console.error("Error fetching pending users:", error);
    }
  };

  const handleApproveUser = (user: any) => {
    // Transforma o usuário pendente no formato esperado pelo UserRoleEditDialog
    setEditingUser({
      user_id: user.user_id,
      email: user.email,
      roles: user.roles || [],
      entity: user.entity || "N/A",
      created_at: user.created_at
    });
  };

  const handleResetPassword = async (user: any) => {
    try {
      // Envia email de reset de senha via Supabase
      const { error } = await supabase.auth.resetPasswordForEmail(user.email, {
        redirectTo: `${window.location.origin}/auth`,
      });

      if (error) throw error;

      toast.success(`Email de redefinição de senha enviado para ${user.email}`);
    } catch (error: any) {
      toast.error(error.message || "Erro ao enviar email de redefinição de senha");
    }
  };

  const handleBlockUser = async (user: any) => {
    try {
      // Usar Edge Function para bloquear usuário (ban_duration)
      const { error } = await supabase.functions.invoke('manage-user', {
        body: {
          action: 'block',
          userId: user.user_id
        }
      });

      if (error) throw error;

      toast.success(`Usuário ${user.email} bloqueado com sucesso`);
      fetchUsersWithRoles();
      fetchPendingUsers();
    } catch (error: any) {
      toast.error(error.message || "Erro ao bloquear usuário");
    }
  };

  const handleDeleteUser = async () => {
    if (!deletingUser) return;

    try {
      // Primeiro, remover roles do usuário
      const { error: rolesError } = await supabase
        .from("user_roles")
        .delete()
        .eq("user_id", deletingUser.user_id);

      if (rolesError) {
        console.error("Error deleting roles:", rolesError);
      }

      // Remover associações de entidades
      try {
        await supabase
          .from("user_entities" as any)
          .delete()
          .eq("user_id", deletingUser.user_id);
      } catch (e) {
        console.log("Could not delete user_entities:", e);
      }

      // Usar Edge Function para deletar usuário do auth
      const { error } = await supabase.functions.invoke('manage-user', {
        body: {
          action: 'delete',
          userId: deletingUser.user_id
        }
      });

      if (error) throw error;

      toast.success(`Usuário ${deletingUser.email} excluído com sucesso`);
      fetchUsersWithRoles();
      fetchPendingUsers();
    } catch (error: any) {
      toast.error(error.message || "Erro ao excluir usuário");
    } finally {
      setDeletingUser(null);
    }
  };

  const getRoleBadgeColor = (role: string) => {
    switch (role) {
      case "super_admin":
        return "bg-red-500 hover:bg-red-600";
      case "master_regional":
        return "bg-blue-500 hover:bg-blue-600";
      case "franquia":
        return "bg-green-500 hover:bg-green-600";
      default:
        return "bg-gray-500 hover:bg-gray-600";
    }
  };

  const getRoleLabel = (role: string) => {
    switch (role) {
      case "super_admin":
        return "Super Admin";
      case "master_regional":
        return "Master Regional";
      case "franquia":
        return "Franquia";
      default:
        return role;
    }
  };

  const handleDeleteMaster = async () => {
    if (!deletingMaster) return;

    try {
      // Check if there are franquias linked to this master
      const { data: linkedFranquias } = await supabase
        .from("franquias")
        .select("id")
        .eq("master_regional_id", deletingMaster.id);

      if (linkedFranquias && linkedFranquias.length > 0) {
        toast.error(`Não é possível excluir: existem ${linkedFranquias.length} franquia(s) vinculada(s) a este Master Regional`);
        setDeletingMaster(null);
        return;
      }

      const { error } = await supabase
        .from("master_regionais")
        .delete()
        .eq("id", deletingMaster.id);

      if (error) throw error;

      toast.success("Master Regional excluído com sucesso!");
      fetchMasterRegionais();
    } catch (error: any) {
      toast.error(error.message || "Erro ao excluir Master Regional");
    } finally {
      setDeletingMaster(null);
    }
  };

  const handleToggleFranquiaStatus = async (franquia: any) => {
    try {
      const newStatus = !franquia.ativo;
      const { error } = await supabase
        .from("franquias")
        .update({ ativo: newStatus })
        .eq("id", franquia.id);

      if (error) throw error;

      toast.success(newStatus ? "Franquia ativada com sucesso!" : "Franquia desativada com sucesso!");
      fetchFranquias();
    } catch (error: any) {
      toast.error(error.message || "Erro ao alterar status da franquia");
    }
  };

  const handleDeleteFranquia = async () => {
    if (!deletingFranquia) return;

    try {
      // Check if there are payments linked to this franquia
      const { data: linkedPayments } = await supabase
        .from("payments")
        .select("id")
        .eq("franquia_id", deletingFranquia.id)
        .limit(1);

      if (linkedPayments && linkedPayments.length > 0) {
        toast.error("Não é possível excluir: existem pagamentos vinculados a esta Franquia");
        setDeletingFranquia(null);
        return;
      }

      // Check if there are customers linked to this franquia
      const { data: linkedCustomers } = await supabase
        .from("customers")
        .select("id")
        .eq("franquia_id", deletingFranquia.id)
        .limit(1);

      if (linkedCustomers && linkedCustomers.length > 0) {
        toast.error("Não é possível excluir: existem clientes vinculados a esta Franquia");
        setDeletingFranquia(null);
        return;
      }

      const { error } = await supabase
        .from("franquias")
        .delete()
        .eq("id", deletingFranquia.id);

      if (error) throw error;

      toast.success("Franquia excluída com sucesso!");
      fetchFranquias();
    } catch (error: any) {
      toast.error(error.message || "Erro ao excluir Franquia");
    } finally {
      setDeletingFranquia(null);
    }
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <p>Carregando...</p>
      </div>
    );
  }

  if (!isSuperAdmin) {
    return null;
  }

  return (
    <div className="container mx-auto py-8 px-4">
      <div className="mb-8">
        <Button
          variant="ghost"
          size="sm"
          onClick={() => navigate(-1)}
          className="mb-4"
        >
          <ArrowLeft className="h-4 w-4 mr-2" />
          Voltar
        </Button>
        <h1 className="text-4xl font-bold mb-2">Painel Super Admin</h1>
        <p className="text-muted-foreground">
          Gerencie Master Regionais e Franquias
        </p>
      </div>

      <Tabs defaultValue="master" className="space-y-8">
        <TabsList className="grid w-full grid-cols-3 max-w-xl">
          <TabsTrigger value="master" className="flex items-center gap-2">
            <Building2 className="h-4 w-4" />
            Master Regionais
          </TabsTrigger>
          <TabsTrigger value="franquias" className="flex items-center gap-2">
            <Store className="h-4 w-4" />
            Franquias
          </TabsTrigger>
          <TabsTrigger value="usuarios" className="flex items-center gap-2">
            <Users className="h-4 w-4" />
            Usuários
          </TabsTrigger>
        </TabsList>

        <TabsContent value="master" className="space-y-6">
          <div className="grid gap-6 md:grid-cols-2">
            <Card>
              <CardHeader>
                <CardTitle>Cadastrar Master Regional</CardTitle>
                <CardDescription>
                  Cadastre uma nova unidade Master Regional
                </CardDescription>
              </CardHeader>
              <CardContent>
                <MasterRegionalForm onSuccess={fetchMasterRegionais} />
              </CardContent>
            </Card>

            <Card>
              <CardHeader>
                <CardTitle>Master Regionais Cadastrados</CardTitle>
                <CardDescription>
                  {masterRegionais.length} master{masterRegionais.length !== 1 ? "s" : ""} cadastrado{masterRegionais.length !== 1 ? "s" : ""}
                </CardDescription>
              </CardHeader>
              <CardContent>
                <div className="overflow-auto max-h-[500px]">
                  <Table>
                    <TableHeader>
                      <TableRow>
                        <TableHead>Nome</TableHead>
                        <TableHead>Email</TableHead>
                        <TableHead>Telefone</TableHead>
                        <TableHead>CNPJ</TableHead>
                        <TableHead className="text-right">Ações</TableHead>
                      </TableRow>
                    </TableHeader>
                    <TableBody>
                      {masterRegionais.length === 0 ? (
                        <TableRow>
                          <TableCell colSpan={5} className="text-center text-muted-foreground">
                            Nenhum Master Regional cadastrado
                          </TableCell>
                        </TableRow>
                      ) : (
                        masterRegionais.map((master) => (
                          <TableRow key={master.id}>
                            <TableCell>{master.nome}</TableCell>
                            <TableCell>{master.email}</TableCell>
                            <TableCell>{master.telefone}</TableCell>
                            <TableCell>{master.cnpj}</TableCell>
                            <TableCell className="text-right">
                              <div className="flex justify-end gap-2">
                                <Button
                                  variant="ghost"
                                  size="icon"
                                  onClick={() => setEditingMaster(master)}
                                  title="Editar"
                                >
                                  <Pencil className="h-4 w-4" />
                                </Button>
                                <Button
                                  variant="ghost"
                                  size="icon"
                                  onClick={() => setDeletingMaster(master)}
                                  title="Excluir"
                                  className="text-destructive hover:text-destructive"
                                >
                                  <Trash2 className="h-4 w-4" />
                                </Button>
                              </div>
                            </TableCell>
                          </TableRow>
                        ))
                      )}
                    </TableBody>
                  </Table>
                </div>
              </CardContent>
            </Card>
          </div>
        </TabsContent>

        <TabsContent value="franquias" className="space-y-6">
          <div className="grid gap-6 md:grid-cols-2">
            <Card>
              <CardHeader>
                <CardTitle>Cadastrar Franquia</CardTitle>
                <CardDescription>
                  Cadastre uma nova franquia
                </CardDescription>
              </CardHeader>
              <CardContent>
                <FranquiaForm onSuccess={fetchFranquias} />
              </CardContent>
            </Card>

            <Card>
              <CardHeader>
                <CardTitle>Franquias Cadastradas</CardTitle>
                <CardDescription>
                  {franquias.length} franquia{franquias.length !== 1 ? "s" : ""} cadastrada{franquias.length !== 1 ? "s" : ""}
                </CardDescription>
              </CardHeader>
              <CardContent>
                {/* Filtro de Franquias */}
                <div className="relative mb-4">
                  <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 h-4 w-4 text-muted-foreground" />
                  <Input
                    placeholder="Filtrar por nome, CNPJ ou email..."
                    value={franquiaFilter}
                    onChange={(e) => setFranquiaFilter(e.target.value)}
                    className="pl-10"
                  />
                </div>
                <div className="overflow-auto max-h-[500px]">
                  <Table>
                    <TableHeader>
                      <TableRow>
                        <TableHead>Nome</TableHead>
                        <TableHead>Email</TableHead>
                        <TableHead>Telefone</TableHead>
                        <TableHead>CNPJ</TableHead>
                        <TableHead>Master Regional</TableHead>
                        <TableHead>Status</TableHead>
                        <TableHead className="text-right">Ações</TableHead>
                      </TableRow>
                    </TableHeader>
                    <TableBody>
                      {franquias.filter((f) => {
                        if (!franquiaFilter) return true;
                        const filter = franquiaFilter.toLowerCase();
                        return (
                          f.nome?.toLowerCase().includes(filter) ||
                          f.email?.toLowerCase().includes(filter) ||
                          f.cnpj?.toLowerCase().includes(filter)
                        );
                      }).length === 0 ? (
                        <TableRow>
                          <TableCell colSpan={7} className="text-center text-muted-foreground">
                            {franquiaFilter ? "Nenhuma franquia encontrada com esse filtro" : "Nenhuma Franquia cadastrada"}
                          </TableCell>
                        </TableRow>
                      ) : (
                        franquias.filter((f) => {
                          if (!franquiaFilter) return true;
                          const filter = franquiaFilter.toLowerCase();
                          return (
                            f.nome?.toLowerCase().includes(filter) ||
                            f.email?.toLowerCase().includes(filter) ||
                            f.cnpj?.toLowerCase().includes(filter)
                          );
                        }).map((franquia) => (
                          <TableRow key={franquia.id}>
                            <TableCell>{franquia.nome}</TableCell>
                            <TableCell>{franquia.email}</TableCell>
                            <TableCell>{franquia.telefone}</TableCell>
                            <TableCell>{franquia.cnpj}</TableCell>
                            <TableCell>
                              {franquia.master_regionais?.nome || "N/A"}
                            </TableCell>
                            <TableCell>
                              <Badge className={franquia.ativo ? "bg-green-500 hover:bg-green-600" : "bg-amber-500 hover:bg-amber-600"}>
                                {franquia.ativo ? "Ativa" : "Aguardando Pagamento"}
                              </Badge>
                            </TableCell>
                            <TableCell className="text-right">
                              <div className="flex justify-end gap-2">
                                <Button
                                  variant="ghost"
                                  size="icon"
                                  onClick={() => handleToggleFranquiaStatus(franquia)}
                                  title={franquia.ativo ? "Desativar" : "Ativar"}
                                  className={franquia.ativo ? "text-amber-500 hover:text-amber-600" : "text-green-500 hover:text-green-600"}
                                >
                                  {franquia.ativo ? <XCircle className="h-4 w-4" /> : <CheckCircle className="h-4 w-4" />}
                                </Button>
                                <Button
                                  variant="ghost"
                                  size="icon"
                                  onClick={() => setEditingFranquia(franquia)}
                                  title="Editar"
                                >
                                  <Pencil className="h-4 w-4" />
                                </Button>
                                <Button
                                  variant="ghost"
                                  size="icon"
                                  onClick={() => setDeletingFranquia(franquia)}
                                  title="Excluir"
                                  className="text-destructive hover:text-destructive"
                                >
                                  <Trash2 className="h-4 w-4" />
                                </Button>
                              </div>
                            </TableCell>
                          </TableRow>
                        ))
                      )}
                    </TableBody>
                  </Table>
                </div>
              </CardContent>
            </Card>
          </div>
        </TabsContent>

        <TabsContent value="usuarios" className="space-y-6">
          {/* Usuários Pendentes de Aprovação */}
          {pendingUsers.length > 0 && (
            <Card className="border-amber-500 border-2">
              <CardHeader className="bg-amber-50">
                <CardTitle className="flex items-center gap-2 text-amber-700">
                  <Clock className="h-5 w-5" />
                  Usuários Pendentes de Aprovação
                </CardTitle>
                <CardDescription>
                  {pendingUsers.length} usuário{pendingUsers.length !== 1 ? "s" : ""} aguardando aprovação
                </CardDescription>
              </CardHeader>
              <CardContent className="pt-4">
                <div className="overflow-auto">
                  <Table>
                    <TableHeader>
                      <TableRow>
                        <TableHead>Email</TableHead>
                        <TableHead>Cadastrado em</TableHead>
                        <TableHead className="text-right">Ações</TableHead>
                      </TableRow>
                    </TableHeader>
                    <TableBody>
                      {pendingUsers.map((user) => (
                        <TableRow key={user.user_id}>
                          <TableCell className="font-medium">{user.email}</TableCell>
                          <TableCell className="text-muted-foreground text-sm">
                            {new Date(user.created_at).toLocaleDateString("pt-BR")}
                          </TableCell>
                          <TableCell className="text-right">
                            <DropdownMenu>
                              <DropdownMenuTrigger asChild>
                                <Button variant="ghost" size="icon">
                                  <MoreHorizontal className="h-4 w-4" />
                                </Button>
                              </DropdownMenuTrigger>
                              <DropdownMenuContent align="end">
                                <DropdownMenuItem onClick={() => handleApproveUser(user)}>
                                  <UserPlus className="h-4 w-4 mr-2" />
                                  Aprovar
                                </DropdownMenuItem>
                                <DropdownMenuItem onClick={() => handleResetPassword(user)}>
                                  <Key className="h-4 w-4 mr-2" />
                                  Resetar Senha
                                </DropdownMenuItem>
                                <DropdownMenuSeparator />
                                <DropdownMenuItem onClick={() => handleBlockUser(user)}>
                                  <UserX className="h-4 w-4 mr-2" />
                                  Bloquear
                                </DropdownMenuItem>
                                <DropdownMenuItem
                                  onClick={() => setDeletingUser(user)}
                                  className="text-destructive focus:text-destructive"
                                >
                                  <Trash2 className="h-4 w-4 mr-2" />
                                  Apagar
                                </DropdownMenuItem>
                              </DropdownMenuContent>
                            </DropdownMenu>
                          </TableCell>
                        </TableRow>
                      ))}
                    </TableBody>
                  </Table>
                </div>
              </CardContent>
            </Card>
          )}

          {/* Usuários com Roles */}
          <Card>
            <CardHeader>
              <CardTitle>Usuários e Permissões</CardTitle>
              <CardDescription>
                {usersWithRoles.length} usuário{usersWithRoles.length !== 1 ? "s" : ""} com roles atribuídas
              </CardDescription>
            </CardHeader>
            <CardContent>
              <div className="overflow-auto">
                <Table>
                  <TableHeader>
                    <TableRow>
                      <TableHead>User ID</TableHead>
                      <TableHead>Email</TableHead>
                      <TableHead>Entidade</TableHead>
                      <TableHead>Roles</TableHead>
                      <TableHead>Criado em</TableHead>
                      <TableHead className="text-right">Ações</TableHead>
                    </TableRow>
                  </TableHeader>
                  <TableBody>
                    {usersWithRoles.length === 0 ? (
                      <TableRow>
                        <TableCell colSpan={6} className="text-center text-muted-foreground">
                          Nenhum usuário com role cadastrado
                        </TableCell>
                      </TableRow>
                    ) : (
                      usersWithRoles.map((user) => (
                        <TableRow key={user.user_id}>
                          <TableCell className="font-mono text-xs">
                            {user.user_id.substring(0, 8)}...
                          </TableCell>
                          <TableCell className="text-sm">{user.email || "N/A"}</TableCell>
                          <TableCell>{user.entity || "N/A"}</TableCell>
                          <TableCell>
                            <div className="flex flex-wrap gap-1">
                              {user.roles.map((role: string) => (
                                <Badge
                                  key={role}
                                  className={`${getRoleBadgeColor(role)} text-white`}
                                >
                                  {getRoleLabel(role)}
                                </Badge>
                              ))}
                            </div>
                          </TableCell>
                          <TableCell className="text-muted-foreground text-sm">
                            {new Date(user.created_at).toLocaleDateString("pt-BR")}
                          </TableCell>
                          <TableCell className="text-right">
                            <DropdownMenu>
                              <DropdownMenuTrigger asChild>
                                <Button variant="ghost" size="icon">
                                  <MoreHorizontal className="h-4 w-4" />
                                </Button>
                              </DropdownMenuTrigger>
                              <DropdownMenuContent align="end">
                                <DropdownMenuItem onClick={() => handleApproveUser(user)}>
                                  <Pencil className="h-4 w-4 mr-2" />
                                  Editar
                                </DropdownMenuItem>
                                <DropdownMenuItem onClick={() => handleResetPassword(user)}>
                                  <Key className="h-4 w-4 mr-2" />
                                  Resetar Senha
                                </DropdownMenuItem>
                                <DropdownMenuSeparator />
                                <DropdownMenuItem onClick={() => handleBlockUser(user)}>
                                  <UserX className="h-4 w-4 mr-2" />
                                  Bloquear
                                </DropdownMenuItem>
                                <DropdownMenuItem
                                  onClick={() => setDeletingUser(user)}
                                  className="text-destructive focus:text-destructive"
                                >
                                  <Trash2 className="h-4 w-4 mr-2" />
                                  Apagar
                                </DropdownMenuItem>
                              </DropdownMenuContent>
                            </DropdownMenu>
                          </TableCell>
                        </TableRow>
                      ))
                    )}
                  </TableBody>
                </Table>
              </div>
            </CardContent>
          </Card>
        </TabsContent>
      </Tabs>

      {/* Edit Master Regional Dialog */}
      <MasterRegionalEditDialog
        open={!!editingMaster}
        onOpenChange={(open) => !open && setEditingMaster(null)}
        masterRegional={editingMaster}
        onSuccess={fetchMasterRegionais}
      />

      {/* Edit Franquia Dialog */}
      <FranquiaEditDialog
        open={!!editingFranquia}
        onOpenChange={(open) => !open && setEditingFranquia(null)}
        franquia={editingFranquia}
        onSuccess={fetchFranquias}
      />

      {/* Delete Master Regional Confirmation */}
      <DeleteConfirmDialog
        open={!!deletingMaster}
        onOpenChange={(open) => !open && setDeletingMaster(null)}
        title="Excluir Master Regional"
        description={`Tem certeza que deseja excluir "${deletingMaster?.nome}"? Esta ação não pode ser desfeita.`}
        onConfirm={handleDeleteMaster}
      />

      {/* Delete Franquia Confirmation */}
      <DeleteConfirmDialog
        open={!!deletingFranquia}
        onOpenChange={(open) => !open && setDeletingFranquia(null)}
        title="Excluir Franquia"
        description={`Tem certeza que deseja excluir "${deletingFranquia?.nome}"? Esta ação não pode ser desfeita.`}
        onConfirm={handleDeleteFranquia}
      />

      {/* Delete User Confirmation */}
      <DeleteConfirmDialog
        open={!!deletingUser}
        onOpenChange={(open) => !open && setDeletingUser(null)}
        title="Excluir Usuário"
        description={`Tem certeza que deseja excluir o usuário "${deletingUser?.email}"? Esta ação não pode ser desfeita e irá remover todas as permissões e associações do usuário.`}
        onConfirm={handleDeleteUser}
      />

      {/* Edit User Role Dialog */}
      <UserRoleEditDialog
        open={!!editingUser}
        onOpenChange={(open) => !open && setEditingUser(null)}
        user={editingUser}
        onSuccess={() => {
          fetchUsersWithRoles();
          fetchPendingUsers();
        }}
      />
    </div>
  );
}