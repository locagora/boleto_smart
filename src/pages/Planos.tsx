import { useState } from "react";
import { Link } from "react-router-dom";
import { Card } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Check, Loader2, ArrowLeft, Users, AlertCircle, CheckCircle2, X, FileX2, Zap, MessageSquare } from "lucide-react";
import { cn } from "@/lib/utils";
import { z } from "zod";

const planos = [
  {
    id: "essencial",
    nome: "Plano Essencial",
    faixa: "1 a 10 clientes",
    valorPorCliente: 20,
    mensalidadeEstimada: "R$ 20,00 a R$ 200,00",
    indicado: "Franquias iniciando operação",
    popular: false,
  },
  {
    id: "profissional",
    nome: "Plano Profissional",
    faixa: "11 a 30 clientes",
    valorPorCliente: 15,
    mensalidadeEstimada: "R$ 165,00 a R$ 450,00",
    indicado: "Franquias em expansão",
    popular: true,
  },
  {
    id: "avancado",
    nome: "Plano Avançado",
    faixa: "31 a 50 clientes",
    valorPorCliente: 10,
    mensalidadeEstimada: "R$ 310,00 a R$ 500,00",
    indicado: "Franquias com operação consolidada",
    popular: false,
  },
  {
    id: "elite",
    nome: "Plano Elite",
    faixa: "51+ clientes",
    valorPorCliente: 8,
    mensalidadeEstimada: "A partir de R$ 408,00",
    indicado: "Grandes operações e redes franqueadas",
    popular: false,
  },
];

const cadastroSchema = z.object({
  razaoSocial: z.string().min(3, "Razão Social deve ter pelo menos 3 caracteres"),
  cnpj: z.string().min(14, "CNPJ inválido").max(18, "CNPJ inválido"),
  email: z.string().email("E-mail inválido"),
  whatsapp: z.string().min(10, "WhatsApp inválido").max(15, "WhatsApp inválido"),
  plano: z.string().min(1, "Selecione um plano"),
  quantidadeClientes: z.number().min(1, "Informe a quantidade de clientes"),
});

const Planos = () => {
  const [selectedPlano, setSelectedPlano] = useState<string | null>(null);
  const [razaoSocial, setRazaoSocial] = useState("");
  const [cnpj, setCnpj] = useState("");
  const [email, setEmail] = useState("");
  const [whatsapp, setWhatsapp] = useState("");
  const [quantidadeClientes, setQuantidadeClientes] = useState("");
  const [loading, setLoading] = useState(false);
  const [responseMessage, setResponseMessage] = useState<{ type: 'success' | 'error'; message: string } | null>(null);

  const formatCNPJ = (value: string) => {
    const digits = value.replace(/\D/g, "");
    return digits
      .replace(/^(\d{2})(\d)/, "$1.$2")
      .replace(/^(\d{2})\.(\d{3})(\d)/, "$1.$2.$3")
      .replace(/\.(\d{3})(\d)/, ".$1/$2")
      .replace(/(\d{4})(\d)/, "$1-$2")
      .slice(0, 18);
  };

  const formatWhatsApp = (value: string) => {
    const digits = value.replace(/\D/g, "");
    return digits
      .replace(/^(\d{2})(\d)/, "($1) $2")
      .replace(/(\d{5})(\d)/, "$1-$2")
      .slice(0, 15);
  };

  const getPlanoRange = (planoId: string): { min: number; max: number } => {
    switch (planoId) {
      case "essencial": return { min: 1, max: 10 };
      case "profissional": return { min: 11, max: 30 };
      case "avancado": return { min: 31, max: 50 };
      case "elite": return { min: 51, max: Infinity };
      default: return { min: 1, max: Infinity };
    }
  };

  const handleSubmit = async () => {
    try {
      const qtdClientes = parseInt(quantidadeClientes) || 0;

      const validation = cadastroSchema.safeParse({
        razaoSocial,
        cnpj,
        email,
        whatsapp,
        plano: selectedPlano,
        quantidadeClientes: qtdClientes,
      });

      if (!validation.success) {
        const errors = validation.error.errors.map((e) => e.message).join(", ");
        setResponseMessage({ type: 'error', message: errors });
        return;
      }

      if (!selectedPlano) {
        setResponseMessage({ type: 'error', message: "Por favor, selecione um plano" });
        return;
      }

      // Validate quantity against plan range
      const range = getPlanoRange(selectedPlano);
      if (qtdClientes < range.min) {
        setResponseMessage({ type: 'error', message: "Quantidade de motos inferior ao plano selecionado" });
        return;
      }
      if (qtdClientes > range.max) {
        setResponseMessage({ type: 'error', message: "Quantidade de motos superior ao plano selecionado" });
        return;
      }

      setLoading(true);

      const planoSelecionado = planos.find((p) => p.id === selectedPlano);
      const mensalidadeEstimada = qtdClientes * (planoSelecionado?.valorPorCliente || 0);

      const payload = {
        razao_social: razaoSocial,
        cnpj: cnpj.replace(/\D/g, ""),
        email,
        whatsapp: whatsapp.replace(/\D/g, ""),
        plano: planoSelecionado?.nome,
        plano_id: selectedPlano,
        valor_por_moto: planoSelecionado?.valorPorCliente,
        quantidade_motos: qtdClientes,
        mensalidade_estimada: mensalidadeEstimada,
        faixa_motos: planoSelecionado?.faixa,
        timestamp: new Date().toISOString(),
      };

      const response = await fetch(
        "https://web.strategy-ia.art/webhook/asaasboletosmart",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(payload),
        }
      );

      const responseData = await response.text();
      
      // Check if response indicates success (case insensitive)
      const isSuccess = response.ok && responseData && (
        responseData.toLowerCase().includes("sucesso") || 
        responseData.includes("Workflow was started")
      );
      
      if (!isSuccess) {
        setResponseMessage({ type: 'error', message: responseData || "Erro ao processar cadastro. Verifique os dados e tente novamente." });
        return;
      }

      setResponseMessage({ type: 'success', message: responseData });
      
      // Reset form
      setRazaoSocial("");
      setCnpj("");
      setEmail("");
      setWhatsapp("");
      setQuantidadeClientes("");
      setSelectedPlano(null);
    } catch (error: any) {
      console.error("Erro no cadastro:", error);
      setResponseMessage({ type: 'error', message: error.message || "Erro ao processar cadastro. Tente novamente." });
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-background via-background to-primary/5">
      {/* Header */}
      <header className="border-b bg-card/80 backdrop-blur-sm sticky top-0 z-50">
        <div className="container mx-auto px-4 flex items-center justify-between">
          <div className="flex items-center gap-2">
            <img src="/logo.png" alt="BoletoSmart" className="h-20 scale-[2] origin-left" />
          </div>
          <nav className="flex items-center gap-4">
            <Link to="/" className="text-sm text-muted-foreground hover:text-foreground transition-colors flex items-center gap-1">
              <ArrowLeft className="h-4 w-4" />
              Voltar
            </Link>
            <Link to="/auth">
              <Button variant="outline" size="sm">
                Já tenho conta
              </Button>
            </Link>
          </nav>
        </div>
      </header>

      <div className="container mx-auto px-4 py-12">
        {/* Response Message Modal */}
        {responseMessage && (
          <div className="fixed inset-0 bg-black/50 backdrop-blur-sm z-50 flex items-center justify-center p-4">
            <Card className={cn(
              "max-w-md w-full p-8 text-center animate-in fade-in zoom-in duration-300",
              responseMessage.type === 'success' ? "border-green-500" : "border-destructive"
            )}>
              <button 
                onClick={() => setResponseMessage(null)}
                className="absolute top-4 right-4 text-muted-foreground hover:text-foreground transition-colors"
              >
                <X className="h-5 w-5" />
              </button>
              
              <div className={cn(
                "mx-auto mb-4 h-16 w-16 rounded-full flex items-center justify-center",
                responseMessage.type === 'success' ? "bg-green-500/10" : "bg-destructive/10"
              )}>
                {responseMessage.type === 'success' ? (
                  <CheckCircle2 className="h-8 w-8 text-green-500" />
                ) : (
                  <AlertCircle className="h-8 w-8 text-destructive" />
                )}
              </div>
              
              <h3 className={cn(
                "text-xl font-semibold mb-2",
                responseMessage.type === 'success' ? "text-green-600" : "text-destructive"
              )}>
                {responseMessage.type === 'success' ? "Sucesso!" : "Atenção"}
              </h3>
              
              <p className="text-foreground text-lg mb-6">
                {responseMessage.message}
              </p>
              
              <Button 
                onClick={() => setResponseMessage(null)}
                variant={responseMessage.type === 'success' ? "default" : "destructive"}
                className={cn("w-full", responseMessage.type === 'success' && "bg-green-600 hover:bg-green-700")}
              >
                {responseMessage.type === 'success' ? "Ok" : "Tentar novamente"}
              </Button>
            </Card>
          </div>
        )}

        {/* Hero Section */}
        <div className="text-center mb-12">
          <h1 className="text-4xl md:text-5xl font-bold text-foreground mb-4">
            Escolha seu <span className="text-primary">Plano BoletoSmart</span>
          </h1>
          <p className="text-lg text-muted-foreground max-w-2xl mx-auto">
            Chega de trabalho braçal. Com o BoletoSmart, sua lista de inadimplentes aparece automaticamente na tela da equipe de cobrança.
          </p>
        </div>

        {/* Plans Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-12">
          {planos.map((plano) => (
            <Card
              key={plano.id}
              className={cn(
                "relative p-6 cursor-pointer transition-all duration-300 hover:shadow-xl hover:-translate-y-1",
                selectedPlano === plano.id
                  ? "ring-2 ring-primary bg-primary/5 border-primary"
                  : "hover:border-primary/50",
                plano.popular && "border-primary/30"
              )}
              onClick={() => {
                setSelectedPlano(plano.id);
                const range = getPlanoRange(plano.id);
                setQuantidadeClientes(range.min.toString());
              }}
            >
              {plano.popular && (
                <div className="absolute -top-3 left-1/2 -translate-x-1/2">
                  <span className="bg-primary text-primary-foreground text-xs font-semibold px-3 py-1 rounded-full">
                    Mais Popular
                  </span>
                </div>
              )}

              {selectedPlano === plano.id && (
                <div className="absolute top-3 right-3">
                  <div className="bg-primary text-primary-foreground rounded-full p-1">
                    <Check className="h-4 w-4" />
                  </div>
                </div>
              )}

              <div className="space-y-4">
                <div className="flex items-center gap-2 text-muted-foreground">
                  <Users className="h-4 w-4" />
                  <span className="text-sm">{plano.faixa}</span>
                </div>

                <h3 className="text-xl font-bold text-foreground">{plano.nome}</h3>

                <div className="flex items-baseline gap-1">
                  <span className="text-3xl font-bold text-primary">
                    R$ {plano.valorPorCliente.toFixed(2).replace(".", ",")}
                  </span>
                  <span className="text-muted-foreground text-sm">/cliente</span>
                </div>

                <div className="pt-4 border-t">
                  <p className="text-sm text-foreground">{plano.indicado}</p>
                </div>
              </div>
            </Card>
          ))}
        </div>

        {/* Registration Form */}
        <Card className="max-w-xl mx-auto p-8">
          <h2 className="text-2xl font-bold text-center mb-6">Finalize sua Compra</h2>

          <div className="space-y-5">
            {/* Selected Plan Display */}
            {selectedPlano && (
              <div className="bg-primary/10 rounded-lg p-4 mb-6">
                <p className="text-sm text-muted-foreground mb-1">Plano selecionado:</p>
                <p className="font-semibold text-foreground">
                  {planos.find((p) => p.id === selectedPlano)?.nome} - R${" "}
                  {planos.find((p) => p.id === selectedPlano)?.valorPorCliente.toFixed(2).replace(".", ",")}/cliente
                </p>
                {quantidadeClientes && parseInt(quantidadeClientes) > 0 && (
                  <p className="text-sm text-primary mt-2">
                    Mensalidade estimada: <strong>R$ {(parseInt(quantidadeClientes) * (planos.find((p) => p.id === selectedPlano)?.valorPorCliente || 0)).toFixed(2).replace(".", ",")}</strong>
                  </p>
                )}
              </div>
            )}

            {!selectedPlano && (
              <div className="bg-muted rounded-lg p-4 mb-6 text-center">
                <p className="text-sm text-muted-foreground">
                  Selecione um plano acima para continuar
                </p>
              </div>
            )}

            <div className="space-y-2">
              <Label htmlFor="razaoSocial">Razão Social</Label>
              <Input
                id="razaoSocial"
                placeholder="Nome da empresa"
                value={razaoSocial}
                onChange={(e) => setRazaoSocial(e.target.value)}
                className="text-lg"
              />
            </div>

            <div className="space-y-2">
              <Label htmlFor="cnpj">CNPJ</Label>
              <Input
                id="cnpj"
                placeholder="00.000.000/0000-00"
                value={cnpj}
                onChange={(e) => setCnpj(formatCNPJ(e.target.value))}
                className="text-lg"
              />
            </div>

            <div className="space-y-2">
              <Label htmlFor="email">E-mail</Label>
              <Input
                id="email"
                type="email"
                placeholder="seu@email.com"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                className="text-lg"
              />
            </div>

            <div className="space-y-2">
              <Label htmlFor="whatsapp">WhatsApp</Label>
              <Input
                id="whatsapp"
                placeholder="(00) 00000-0000"
                value={whatsapp}
                onChange={(e) => setWhatsapp(formatWhatsApp(e.target.value))}
                className="text-lg"
              />
            </div>

            {selectedPlano && (
              <div className="space-y-2">
                <Label htmlFor="quantidadeClientes">Quantidade de Clientes</Label>
                <Input
                  id="quantidadeClientes"
                  type="number"
                  min={getPlanoRange(selectedPlano).min}
                  max={getPlanoRange(selectedPlano).max === Infinity ? undefined : getPlanoRange(selectedPlano).max}
                  placeholder="Informe a quantidade de clientes"
                  value={quantidadeClientes}
                  onChange={(e) => setQuantidadeClientes(e.target.value)}
                  onBlur={() => {
                    const value = parseInt(quantidadeClientes) || 0;
                    const range = getPlanoRange(selectedPlano);
                    if (value < range.min) {
                      setQuantidadeClientes(range.min.toString());
                    } else if (range.max !== Infinity && value > range.max) {
                      setQuantidadeClientes(range.max.toString());
                    }
                  }}
                  className="text-lg"
                />
                <p className="text-xs text-muted-foreground">
                  Mínimo: {getPlanoRange(selectedPlano).min} clientes
                  {getPlanoRange(selectedPlano).max !== Infinity && ` | Máximo: ${getPlanoRange(selectedPlano).max} clientes`}
                </p>
              </div>
            )}

            <Button
              onClick={handleSubmit}
              disabled={loading || !selectedPlano || !quantidadeClientes || parseInt(quantidadeClientes) < 1}
              className="w-full h-12 text-lg font-semibold mt-4"
            >
              {loading ? (
                <>
                  <Loader2 className="h-5 w-5 mr-2 animate-spin" />
                  Processando...
                </>
              ) : (
                "Comprar Agora"
              )}
            </Button>

            <p className="text-xs text-center text-muted-foreground mt-4">
              Ao continuar, você concorda com nossos termos de uso e política de privacidade.
            </p>
          </div>
        </Card>

        {/* Features Section */}
        <div className="mt-16 grid md:grid-cols-3 gap-8 max-w-4xl mx-auto">
          <Card className="group p-6 text-center hover:shadow-xl transition-all duration-300 border-2 border-transparent hover:border-primary/20 bg-gradient-to-br from-card to-primary/5">
            <div className="bg-gradient-to-br from-primary to-primary/70 rounded-2xl w-16 h-16 flex items-center justify-center mx-auto mb-4 shadow-lg group-hover:scale-110 transition-transform duration-300">
              <FileX2 className="h-8 w-8 text-white" />
            </div>
            <h3 className="font-bold text-lg mb-2">Sem planilhas</h3>
            <p className="text-sm text-muted-foreground">Lista de inadimplentes automática</p>
          </Card>
          <Card className="group p-6 text-center hover:shadow-xl transition-all duration-300 border-2 border-transparent hover:border-secondary/20 bg-gradient-to-br from-card to-secondary/5">
            <div className="bg-gradient-to-br from-secondary to-secondary/70 rounded-2xl w-16 h-16 flex items-center justify-center mx-auto mb-4 shadow-lg group-hover:scale-110 transition-transform duration-300">
              <Zap className="h-8 w-8 text-white" />
            </div>
            <h3 className="font-bold text-lg mb-2">Integração Asaas</h3>
            <p className="text-sm text-muted-foreground">Conecte uma vez e esqueça</p>
          </Card>
          <Card className="group p-6 text-center hover:shadow-xl transition-all duration-300 border-2 border-transparent hover:border-green-500/20 bg-gradient-to-br from-card to-green-500/5">
            <div className="bg-gradient-to-br from-green-500 to-green-600 rounded-2xl w-16 h-16 flex items-center justify-center mx-auto mb-4 shadow-lg group-hover:scale-110 transition-transform duration-300">
              <MessageSquare className="h-8 w-8 text-white" />
            </div>
            <h3 className="font-bold text-lg mb-2">Disparo WhatsApp</h3>
            <p className="text-sm text-muted-foreground">Envie cobranças em um clique</p>
          </Card>
        </div>
      </div>
    </div>
  );
};

export default Planos;
