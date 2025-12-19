import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { Card } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Clock, LogOut } from "lucide-react";
import { supabase } from "@/integrations/supabase/client";
import { toast } from "sonner";

const AguardandoAprovacao = () => {
  const navigate = useNavigate();
  const [userEmail, setUserEmail] = useState<string | null>(null);
  const [checking, setChecking] = useState(true);

  useEffect(() => {
    const checkUserStatus = async () => {
      const { data: { user } } = await supabase.auth.getUser();

      if (!user) {
        navigate("/auth");
        return;
      }

      setUserEmail(user.email ?? null);

      // Verificar se o usuário já tem alguma role
      const { data: roles } = await supabase
        .from("user_roles")
        .select("role")
        .eq("user_id", user.id);

      if (roles && roles.length > 0) {
        // Usuário já tem role, pode acessar o dashboard
        navigate("/dashboard");
        return;
      }

      setChecking(false);
    };

    checkUserStatus();

    // Verificar periodicamente se foi aprovado
    const interval = setInterval(checkUserStatus, 10000); // A cada 10 segundos

    return () => clearInterval(interval);
  }, [navigate]);

  const handleLogout = async () => {
    await supabase.auth.signOut();
    toast.success("Logout realizado com sucesso");
    navigate("/auth");
  };

  if (checking) {
    return (
      <div className="min-h-screen bg-gradient-to-b from-background to-muted flex items-center justify-center">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary"></div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gradient-to-b from-background to-muted flex items-center justify-center p-4">
      <div className="w-full max-w-md">
        <Card className="p-8 text-center">
          <div className="mb-6">
            <div className="w-20 h-20 mx-auto bg-amber-100 rounded-full flex items-center justify-center mb-4">
              <Clock className="h-10 w-10 text-amber-600" />
            </div>
            <h1 className="text-2xl font-bold mb-2">Aguardando Aprovação</h1>
            <p className="text-muted-foreground">
              Seu cadastro foi realizado com sucesso!
            </p>
          </div>

          <div className="bg-muted p-4 rounded-lg mb-6">
            <p className="text-sm text-muted-foreground mb-2">
              E-mail cadastrado:
            </p>
            <p className="font-medium">{userEmail}</p>
          </div>

          <p className="text-sm text-muted-foreground mb-6">
            Um administrador do sistema irá revisar seu cadastro e liberar seu acesso em breve.
            Você receberá uma notificação quando sua conta for aprovada.
          </p>

          <p className="text-xs text-muted-foreground mb-6">
            Esta página verifica automaticamente se sua conta foi aprovada.
          </p>

          <Button variant="outline" onClick={handleLogout} className="w-full">
            <LogOut className="mr-2 h-4 w-4" />
            Sair
          </Button>
        </Card>
      </div>
    </div>
  );
};

export default AguardandoAprovacao;
