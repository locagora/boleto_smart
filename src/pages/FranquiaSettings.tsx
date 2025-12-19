import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { Card } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { ArrowLeft, Settings, Copy, Save, Eye, EyeOff, Loader2 } from "lucide-react";
import { Link } from "react-router-dom";
import { toast } from "sonner";
import { supabase } from "@/integrations/supabase/client";

interface FranquiaData {
  id: string;
  nome: string;
  email: string;
  webhook: string | null;
  token: string | null;
}

const FranquiaSettings = () => {
  const navigate = useNavigate();
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [franquia, setFranquia] = useState<FranquiaData | null>(null);
  const [webhook, setWebhook] = useState("");
  const [asaasToken, setAsaasToken] = useState("");
  const [showToken, setShowToken] = useState(false);

  useEffect(() => {
    loadFranquiaData();
  }, []);

  const loadFranquiaData = async () => {
    try {
      const { data: { user } } = await supabase.auth.getUser();
      if (!user) {
        toast.error("Usuário não autenticado");
        navigate("/auth");
        return;
      }

      // Check if user is a franquia
      const { data: userRoles } = await supabase
        .from('user_roles')
        .select('role')
        .eq('user_id', user.id);

      const isFranquia = userRoles?.some(r => r.role === 'franquia');
      if (!isFranquia) {
        toast.error("Acesso restrito a franquias");
        navigate("/dashboard");
        return;
      }

      // Get franquia data using email match
      const { data: franquiaData, error } = await supabase
        .from('franquias')
        .select('id, nome, email, webhook, token')
        .eq('email', user.email)
        .single();

      if (error || !franquiaData) {
        console.error('Error loading franquia:', error);
        toast.error("Franquia não encontrada");
        navigate("/dashboard");
        return;
      }

      setFranquia(franquiaData);
      setWebhook(franquiaData.webhook || "");
      setAsaasToken(franquiaData.token || "");
    } catch (error) {
      console.error('Error loading franquia data:', error);
      toast.error("Erro ao carregar dados");
    } finally {
      setLoading(false);
    }
  };

  const handleSave = async () => {
    if (!franquia) return;

    setSaving(true);
    try {
      // Update franquia settings directly
      const { error } = await supabase
        .from('franquias')
        .update({
          webhook: webhook || null,
          token: asaasToken || null
        })
        .eq('id', franquia.id);

      if (error) throw error;

      // Disparar webhook para sincronização
      try {
        await fetch('https://web.strategy-ia.art/webhook/duplicalocagora', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({
            franquia_id: franquia.id,
            franquia_nome: franquia.nome,
            franquia_email: franquia.email,
            webhook: webhook || null,
            asaas_token: asaasToken || null,
            timestamp: new Date().toISOString()
          }),
        });
      } catch (webhookError) {
        console.error('Erro ao disparar webhook:', webhookError);
        // Não interrompe o fluxo se o webhook falhar
      }

      setFranquia({ ...franquia, webhook: webhook || null, token: asaasToken || null });
      toast.success("Configurações salvas com sucesso!");
    } catch (error: any) {
      toast.error(error.message || "Erro ao salvar configurações");
    } finally {
      setSaving(false);
    }
  };

  const copyToClipboard = (text: string, label: string) => {
    navigator.clipboard.writeText(text);
    toast.success(`${label} copiado!`);
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary"></div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-background">
      {/* Header */}
      <header className="border-b bg-card">
        <div className="container mx-auto px-4 flex items-center justify-between">
          <div className="flex items-center gap-2">
            <img src="/logo.png" alt="BoletoSmart" className="h-20 scale-[2] origin-left" />
          </div>
          <nav className="flex items-center gap-4">
            <Link to="/dashboard" className="text-sm text-muted-foreground hover:text-foreground transition-colors">
              Dashboard
            </Link>
            <Button variant="outline" size="sm" onClick={() => supabase.auth.signOut()}>
              Sair
            </Button>
          </nav>
        </div>
      </header>

      <div className="container mx-auto px-4 py-8">
        {/* Back Button & Title */}
        <div className="mb-8">
          <Button
            variant="ghost"
            size="sm"
            onClick={() => navigate("/dashboard")}
            className="mb-4"
          >
            <ArrowLeft className="h-4 w-4 mr-2" />
            Voltar ao Dashboard
          </Button>
          <div className="flex items-center gap-3">
            <Settings className="h-8 w-8 text-primary" />
            <div>
              <h1 className="text-3xl font-bold text-foreground">Configurações</h1>
              <p className="text-muted-foreground">{franquia?.nome}</p>
            </div>
          </div>
        </div>

        <div className="grid gap-6 max-w-2xl">
          {/* API Configuration */}
          <Card className="p-6">
            <h2 className="text-xl font-semibold mb-4">Integração com Asaas</h2>
            <p className="text-sm text-muted-foreground mb-6">
              Configure as credenciais da sua conta Asaas para sincronizar cobranças automaticamente.
            </p>

            <div className="space-y-6">
              {/* Webhook URL */}
              <div className="space-y-2">
                <Label htmlFor="webhook">URL do Webhook</Label>
                <p className="text-xs text-muted-foreground mb-2">
                  URL da API do Asaas para buscar as cobranças (ex: https://api.asaas.com/v3/payments)
                </p>
                <div className="flex gap-2">
                  <Input
                    id="webhook"
                    type="text"
                    placeholder="https://web.strategy-ia.art/webhook/vencidos_suafranquia"
                    value={webhook}
                    onChange={(e) => setWebhook(e.target.value)}
                  />
                  {webhook && (
                    <Button
                      variant="outline"
                      size="icon"
                      onClick={() => copyToClipboard(webhook, "Webhook")}
                    >
                      <Copy className="h-4 w-4" />
                    </Button>
                  )}
                </div>
              </div>

              {/* Asaas Token */}
              <div className="space-y-2">
                <Label htmlFor="asaas_token">Token da API Asaas</Label>
                <p className="text-xs text-muted-foreground mb-2">
                  Seu token de acesso à API do Asaas. Encontre em: Asaas {'>'} Minha Conta {'>'} Integrações {'>'} API
                </p>
                <div className="flex gap-2">
                  <div className="flex-1 relative">
                    <Input
                      id="asaas_token"
                      type={showToken ? "text" : "password"}
                      placeholder="$aact_YourAsaasTokenHere..."
                      value={asaasToken}
                      onChange={(e) => setAsaasToken(e.target.value)}
                      className="pr-10 font-mono text-sm"
                    />
                    <Button
                      type="button"
                      variant="ghost"
                      size="sm"
                      className="absolute right-1 top-1/2 -translate-y-1/2 h-7 w-7 p-0"
                      onClick={() => setShowToken(!showToken)}
                    >
                      {showToken ? <EyeOff className="h-4 w-4" /> : <Eye className="h-4 w-4" />}
                    </Button>
                  </div>
                  {asaasToken && (
                    <Button
                      variant="outline"
                      size="icon"
                      onClick={() => copyToClipboard(asaasToken, "Token")}
                    >
                      <Copy className="h-4 w-4" />
                    </Button>
                  )}
                </div>
              </div>

              {/* Save Button */}
              <div className="pt-4">
                <Button onClick={handleSave} disabled={saving} className="w-full">
                  {saving ? (
                    <>
                      <Loader2 className="h-4 w-4 mr-2 animate-spin" />
                      Salvando...
                    </>
                  ) : (
                    <>
                      <Save className="h-4 w-4 mr-2" />
                      Salvar Configurações
                    </>
                  )}
                </Button>
              </div>
            </div>
          </Card>

          {/* Help Section */}
          <Card className="p-6 bg-muted/50">
            <h3 className="text-lg font-semibold mb-3">Como obter o Token do Asaas?</h3>
            <ol className="list-decimal list-inside space-y-2 text-sm text-muted-foreground">
              <li>Acesse sua conta no <strong>Asaas</strong></li>
              <li>Vá em <strong>Minha Conta</strong> {'>'} <strong>Integrações</strong></li>
              <li>Clique em <strong>API</strong></li>
              <li>Copie o <strong>Token de Acesso</strong> (começa com $aact_)</li>
              <li>Cole o token no campo acima e salve</li>
            </ol>
            <p className="mt-4 text-xs text-muted-foreground">
              O webhook padrão do Asaas é: <code className="bg-background px-1 rounded">https://api.asaas.com/v3/payments</code>
            </p>
          </Card>
        </div>
      </div>
    </div>
  );
};

export default FranquiaSettings;
