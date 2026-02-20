import { useState } from "react";
import { Link } from "react-router-dom";
import { Card } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Check, Loader2, ArrowLeft, Users, AlertCircle, CheckCircle2, X, FileX2, Zap, MessageSquare, Crown, TrendingDown, Star } from "lucide-react";
import { cn } from "@/lib/utils";
import { z } from "zod";

const PRECO_BASE = 149.90;

const planos = [
  {
    id: "locagora-mensal",
    nome: "Mensal",
    faixa: "Franqueados Locagora",
    valorPorCliente: 0,
    valorFixo: PRECO_BASE,
    valorMensal: PRECO_BASE,
    mensalidadeEstimada: "R$ 149,90",
    indicado: "Flexibilidade total, sem compromisso de prazo",
    popular: false,
    isFixedPrice: true,
    periodo: "mês",
    meses: 1,
    desconto: 0,
    badge: null,
    badgeColor: "",
    accentColor: "primary",
  },
  {
    id: "locagora-semestral",
    nome: "Semestral",
    faixa: "Franqueados Locagora",
    valorPorCliente: 0,
    valorFixo: Math.round(PRECO_BASE * 0.9 * 6 * 100) / 100,
    valorMensal: Math.round(PRECO_BASE * 0.9 * 100) / 100,
    mensalidadeEstimada: `R$ ${(Math.round(PRECO_BASE * 0.9 * 6 * 100) / 100).toFixed(2).replace(".", ",")}`,
    indicado: "Economia de 10% com pagamento semestral",
    popular: false,
    isFixedPrice: true,
    periodo: "mês",
    meses: 6,
    desconto: 10,
    badge: "10% OFF",
    badgeColor: "bg-secondary text-white",
    accentColor: "secondary",
  },
  {
    id: "locagora-anual",
    nome: "Anual",
    faixa: "Franqueados Locagora",
    valorPorCliente: 0,
    valorFixo: Math.round(PRECO_BASE * 0.8 * 12 * 100) / 100,
    valorMensal: Math.round(PRECO_BASE * 0.8 * 100) / 100,
    mensalidadeEstimada: `R$ ${(Math.round(PRECO_BASE * 0.8 * 12 * 100) / 100).toFixed(2).replace(".", ",")}`,
    indicado: "Maior economia com 20% de desconto",
    popular: true,
    isFixedPrice: true,
    periodo: "mês",
    meses: 12,
    desconto: 20,
    badge: "Mais Popular",
    badgeColor: "bg-green-600 text-white",
    accentColor: "green",
  },
  {
    id: "essencial",
    nome: "Plano Essencial",
    faixa: "1 a 10 clientes",
    valorPorCliente: 20,
    mensalidadeEstimada: "R$ 20,00 a R$ 200,00",
    indicado: "Empresas iniciando operação",
    popular: false,
  },
  {
    id: "profissional",
    nome: "Plano Profissional",
    faixa: "11 a 30 clientes",
    valorPorCliente: 15,
    mensalidadeEstimada: "R$ 165,00 a R$ 450,00",
    indicado: "Empresas em expansão",
    popular: false,
  },
  {
    id: "avancado",
    nome: "Plano Avançado",
    faixa: "31+ clientes",
    valorPorCliente: 10,
    mensalidadeEstimada: "A partir de R$ 310,00",
    indicado: "Empresas com operação consolidada",
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
      case "locagora-mensal":
      case "locagora-semestral":
      case "locagora-anual":
        return { min: 0, max: Infinity };
      case "essencial": return { min: 1, max: 10 };
      case "profissional": return { min: 11, max: 30 };
      case "avancado": return { min: 31, max: Infinity };
      default: return { min: 1, max: Infinity };
    }
  };

  const isFixedPricePlan = (planoId: string | null): boolean => {
    if (!planoId) return false;
    const plano = planos.find(p => p.id === planoId);
    return plano?.isFixedPrice === true;
  };

  const handleSubmit = async () => {
    try {
      const qtdClientes = parseInt(quantidadeClientes) || 0;
      const isFixed = isFixedPricePlan(selectedPlano);

      const validation = cadastroSchema.safeParse({
        razaoSocial,
        cnpj,
        email,
        whatsapp,
        plano: selectedPlano,
        quantidadeClientes: isFixed ? 1 : qtdClientes,
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

      // Validate quantity against plan range (skip for fixed price plans)
      if (!isFixed) {
        const range = getPlanoRange(selectedPlano);
        if (qtdClientes < range.min) {
          setResponseMessage({ type: 'error', message: "Quantidade de motos inferior ao plano selecionado" });
          return;
        }
        if (qtdClientes > range.max) {
          setResponseMessage({ type: 'error', message: "Quantidade de motos superior ao plano selecionado" });
          return;
        }
      }

      setLoading(true);

      const planoSelecionado = planos.find((p) => p.id === selectedPlano);
      const isLocagora = selectedPlano?.startsWith("locagora-");
      const periodoLabel = selectedPlano === "locagora-semestral" ? "Semestral" : selectedPlano === "locagora-anual" ? "Anual" : "Mensal";
      const valorCobrado = isFixed
        ? planoSelecionado?.valorFixo || 0
        : qtdClientes * (planoSelecionado?.valorPorCliente || 0);

      const payload = {
        razao_social: razaoSocial,
        cnpj: cnpj.replace(/\D/g, ""),
        email,
        whatsapp: whatsapp.replace(/\D/g, ""),
        plano: isLocagora ? `Locagora ${periodoLabel}` : planoSelecionado?.nome,
        plano_id: selectedPlano,
        valor_por_moto: isFixed ? planoSelecionado?.valorFixo : planoSelecionado?.valorPorCliente,
        quantidade_motos: isFixed ? 1 : qtdClientes,
        mensalidade_estimada: valorCobrado,
        faixa_motos: planoSelecionado?.faixa,
        periodo_meses: (planoSelecionado as any)?.meses || 1,
        desconto_percentual: (planoSelecionado as any)?.desconto || 0,
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

        {/* Main Content - Form + Plans */}
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8 mb-12 items-start">
          {/* Registration Form - Left Side */}
          <Card className="p-8 h-fit lg:sticky lg:top-24">
            <h2 className="text-2xl font-bold text-center mb-6">Finalize sua Compra</h2>

            <div className="space-y-5">
              {/* Selected Plan Display */}
              {selectedPlano && (() => {
                const planoSel = planos.find((p) => p.id === selectedPlano);
                const isFixed = isFixedPricePlan(selectedPlano);
                const isLocagora = selectedPlano.startsWith("locagora-");
                const periodoLabel = selectedPlano === "locagora-semestral" ? "Semestral" : selectedPlano === "locagora-anual" ? "Anual" : "Mensal";
                const meses = (planoSel as any)?.meses || 1;

                return (
                  <div className={cn(
                    "rounded-lg p-4 mb-6",
                    isFixed ? "bg-green-600/10" : "bg-primary/10"
                  )}>
                    <p className="text-sm text-muted-foreground mb-1">Plano selecionado:</p>
                    <p className="font-semibold text-foreground">
                      {isLocagora ? `Locagora ${periodoLabel}` : planoSel?.nome}
                    </p>
                    {isFixed ? (
                      <div className="mt-2 space-y-1">
                        {meses > 1 ? (
                          <>
                            <p className="text-sm text-green-600">
                              Equivalente: <strong>R$ {(planoSel as any)?.valorMensal?.toFixed(2).replace(".", ",")}/mês</strong>
                            </p>
                            <p className="text-base font-bold text-green-700">
                              Valor a pagar: R$ {planoSel?.valorFixo?.toFixed(2).replace(".", ",")}
                            </p>
                            <p className="text-xs text-muted-foreground">
                              {meses} meses com {(planoSel as any).desconto}% de desconto
                            </p>
                          </>
                        ) : (
                          <p className="text-sm text-green-600">
                            Valor: <strong>R$ {planoSel?.valorFixo?.toFixed(2).replace(".", ",")}/mês</strong>
                          </p>
                        )}
                      </div>
                    ) : (
                      quantidadeClientes && parseInt(quantidadeClientes) > 0 && (
                        <p className="text-sm text-primary mt-2">
                          Mensalidade estimada: <strong>R$ {(parseInt(quantidadeClientes) * (planoSel?.valorPorCliente || 0)).toFixed(2).replace(".", ",")}</strong>
                        </p>
                      )
                    )}
                  </div>
                );
              })()}

              {!selectedPlano && (
                <div className="bg-muted rounded-lg p-4 mb-6 text-center">
                  <p className="text-sm text-muted-foreground">
                    Selecione um plano ao lado para continuar
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

              {selectedPlano && !isFixedPricePlan(selectedPlano) && (
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
                disabled={loading || !selectedPlano || (!isFixedPricePlan(selectedPlano) && (!quantidadeClientes || parseInt(quantidadeClientes) < 1))}
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

          {/* Plans Grid - Right Side */}
          <div className="lg:col-span-2 flex flex-col gap-8">
            {/* Planos Locagora - 3 colunas */}
            <div>
              <div className="flex items-center justify-center gap-2 mb-8">
                <div className="h-px flex-1 bg-gradient-to-r from-transparent to-green-500/30" />
                <span className="bg-green-600 text-white text-xs font-semibold px-4 py-1.5 rounded-full flex items-center gap-1.5 shadow-md">
                  <Crown className="h-3.5 w-3.5" />
                  Parceria Exclusiva Locagora
                </span>
                <div className="h-px flex-1 bg-gradient-to-l from-transparent to-green-500/30" />
              </div>

              {(() => {
                const features = [
                  { text: "Clientes ilimitados", bold: true },
                  { text: "Visualização PIX e Boletos" },
                  { text: "Cobranças vencidas" },
                  { text: "2ª via pelo locatário" },
                  { text: "Cobrança via WhatsApp" },
                  { text: "Integração com Asaas" },
                  { text: "Suporte prioritário" },
                ];

                return (
                  <div className="grid grid-cols-1 md:grid-cols-3 gap-5 md:items-stretch">
                    {planos.filter(p => p.isFixedPrice).map((plano) => {
                      const isSelected = selectedPlano === plano.id;
                      const isSemestral = plano.id === "locagora-semestral";
                      const isAnual = plano.id === "locagora-anual";
                      const isMensal = plano.id === "locagora-mensal";

                      // Cores por plano
                      const cardGradient = isAnual
                        ? "linear-gradient(145deg, #1a7a3a, #22863a 30%, #1e6f32 70%, #196b2e)"
                        : isSemestral
                          ? "linear-gradient(145deg, #2d8a5e, #4CAF6D 30%, #3d9960 70%, #358a55)"
                          : "linear-gradient(145deg, #1a5f7a, #1F6F8B 30%, #1a6580 70%, #175e75)";

                      const glowColors = isAnual
                        ? "from-green-400/20 via-green-500/10 to-emerald-600/20"
                        : isSemestral
                          ? "from-green-400/15 via-emerald-500/10 to-teal-600/15"
                          : "from-cyan-400/15 via-teal-500/10 to-blue-600/15";

                      const accentColor = isAnual
                        ? "text-yellow-300"
                        : isSemestral
                          ? "text-emerald-200"
                          : "text-cyan-200";

                      const accentBg = isAnual
                        ? "bg-yellow-400/90 text-yellow-900 border-yellow-300"
                        : isSemestral
                          ? "bg-emerald-400/90 text-emerald-900 border-emerald-300"
                          : "bg-cyan-300/20 border-cyan-300/30";

                      const selectedCheckBg = isAnual
                        ? "text-green-700"
                        : isSemestral
                          ? "text-green-700"
                          : "text-teal-700";

                      const ctaLabel = isAnual
                        ? "Selecionar Plano Anual"
                        : isSemestral
                          ? "Selecionar Semestral"
                          : "Selecionar Mensal";

                      const periodoTotal = isAnual
                        ? `Pague R$ ${plano.valorFixo?.toFixed(2).replace(".", ",")} por ano`
                        : isSemestral
                          ? `Pague R$ ${plano.valorFixo?.toFixed(2).replace(".", ",")} por semestre`
                          : null;

                      const economiaLabel = plano.desconto > 0
                        ? `Economize R$ ${(PRECO_BASE * plano.meses - plano.valorFixo).toFixed(2).replace(".", ",")}/${isAnual ? "ano" : "sem"}`
                        : null;

                      return (
                        <div
                          key={plano.id}
                          className={cn("relative", isAnual && "md:-mt-2")}
                        >
                          {/* Glow decorativo */}
                          {isAnual && (
                            <div className={cn("absolute -inset-1 bg-gradient-to-br rounded-2xl blur-lg", glowColors)} />
                          )}

                          <div
                            className={cn(
                              "relative rounded-xl overflow-hidden cursor-pointer transition-all duration-300 hover:-translate-y-1 h-full flex flex-col",
                              isSelected
                                ? "ring-2 ring-white shadow-2xl"
                                : "shadow-xl hover:shadow-2xl"
                            )}
                            style={{ background: cardGradient }}
                            onClick={() => {
                              setSelectedPlano(plano.id);
                              setQuantidadeClientes("0");
                            }}
                          >
                            {/* Pattern overlay */}
                            <div
                              className="absolute inset-0 opacity-[0.06]"
                              style={{
                                backgroundImage: "radial-gradient(circle, white 1px, transparent 1px)",
                                backgroundSize: "20px 20px",
                              }}
                            />

                            {/* Badge topo */}
                            {(isAnual || plano.badge) && (
                              <div className="relative bg-white/15 backdrop-blur-sm text-center py-2 px-4 border-b border-white/10">
                                {isAnual ? (
                                  <>
                                    <Star className="h-3.5 w-3.5 inline mr-1.5 -mt-0.5 text-yellow-300" />
                                    <span className="text-sm font-bold text-white tracking-wide">Mais Popular</span>
                                    <Star className="h-3.5 w-3.5 inline ml-1.5 -mt-0.5 text-yellow-300" />
                                  </>
                                ) : (
                                  <span className="text-sm font-bold text-white tracking-wide">{plano.badge}</span>
                                )}
                              </div>
                            )}

                            <div className="relative p-6 flex flex-col flex-1">
                              {/* Check selecionado */}
                              {isSelected && (
                                <div className="absolute top-2 right-2">
                                  <div className={cn("bg-white rounded-full p-1 shadow", selectedCheckBg)}>
                                    <Check className="h-4 w-4" />
                                  </div>
                                </div>
                              )}

                              <div className="flex flex-col flex-1 text-center">
                                <h3 className={cn(
                                  "font-extrabold text-white mb-4",
                                  isAnual ? "text-2xl" : "text-xl"
                                )}>{plano.nome}</h3>

                                {/* Preco */}
                                <div className="mb-4">
                                  {plano.desconto > 0 && (
                                    <div className="flex items-center justify-center gap-2 mb-3">
                                      <span className="text-sm text-white/60 line-through decoration-2">
                                        R$ {PRECO_BASE.toFixed(2).replace(".", ",")}
                                      </span>
                                      <span className={cn(
                                        "text-sm font-extrabold px-3 py-1.5 rounded-full border shadow-lg animate-pulse",
                                        accentBg
                                      )}>
                                        -{plano.desconto}% OFF
                                      </span>
                                    </div>
                                  )}
                                  <div className="flex items-baseline justify-center gap-1">
                                    <span className="text-lg text-white/70">R$</span>
                                    <span className={cn(
                                      "font-black text-white tracking-tight",
                                      isAnual ? "text-6xl" : "text-5xl"
                                    )} style={{ textShadow: "0 2px 10px rgba(0,0,0,0.2)" }}>
                                      {(plano as any).valorMensal?.toFixed(2).replace(".", ",")}
                                    </span>
                                    <span className="text-white/60 text-sm">/mês</span>
                                  </div>
                                  {periodoTotal && (
                                    <p className="text-sm font-semibold text-white/80 mt-2">
                                      {periodoTotal}
                                    </p>
                                  )}
                                  {isMensal && (
                                    <p className="text-sm text-white/70 mt-2">
                                      {plano.indicado}
                                    </p>
                                  )}
                                </div>

                                {/* Economia */}
                                {economiaLabel ? (
                                  <div className={cn(
                                    "rounded-lg p-3 backdrop-blur-sm border flex items-center justify-center gap-2 mb-4",
                                    isAnual
                                      ? "bg-yellow-400/20 border-yellow-400/30"
                                      : "bg-emerald-400/20 border-emerald-300/30"
                                  )}>
                                    <TrendingDown className={cn("h-5 w-5", accentColor)} />
                                    <span className={cn("text-base font-extrabold", accentColor)}>
                                      {economiaLabel}
                                    </span>
                                  </div>
                                ) : (
                                  <div className="mb-4" />
                                )}

                                {/* Divider */}
                                <div className="h-px bg-gradient-to-r from-transparent via-white/20 to-transparent mb-4" />

                                {/* Features */}
                                <div className="space-y-2.5 text-left mb-5 flex-1">
                                  {features.map((feature, i) => (
                                    <div key={i} className="flex items-center gap-2.5">
                                      <div className="h-5 w-5 rounded-full bg-white/15 flex items-center justify-center flex-shrink-0">
                                        <Check className="h-3 w-3 text-white" />
                                      </div>
                                      <span className={cn(
                                        "text-sm text-white/90",
                                        feature.bold && "font-semibold text-white"
                                      )}>{feature.text}</span>
                                    </div>
                                  ))}
                                </div>

                                {/* CTA */}
                                <button className={cn(
                                  "w-full py-3 rounded-lg font-bold text-sm transition-all duration-200 mt-auto",
                                  isSelected
                                    ? "bg-white text-green-700 shadow-lg"
                                    : "bg-white/15 text-white border border-white/20 hover:bg-white/25"
                                )}>
                                  {isSelected ? "Selecionado" : ctaLabel}
                                </button>
                              </div>
                            </div>
                          </div>
                        </div>
                      );
                    })}
                  </div>
                );
              })()}

              {/* Nota todos os planos */}
              <p className="text-center text-xs text-muted-foreground mt-5">
                Todos os planos incluem os mesmos recursos. Escolha o prazo que melhor se encaixa.
              </p>
            </div>

            {/* Outros Planos - 3 colunas: Essencial | Profissional | Avançado */}
            <div>
              <div className="flex items-center justify-center gap-2 mb-4">
                <div className="h-px flex-1 bg-gradient-to-r from-transparent to-primary/20" />
                <span className="text-xs font-medium text-muted-foreground px-3 py-1 rounded-full border">
                  Outros Planos
                </span>
                <div className="h-px flex-1 bg-gradient-to-l from-transparent to-primary/20" />
              </div>

              <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
                {planos.filter(p => !p.isFixedPrice).map((plano) => (
                  <Card
                    key={plano.id}
                    className={cn(
                      "relative p-6 cursor-pointer transition-all duration-300 hover:shadow-xl hover:-translate-y-1",
                      selectedPlano === plano.id
                        ? "ring-2 ring-primary bg-primary/5 border-primary"
                        : "hover:border-primary/50"
                    )}
                    onClick={() => {
                      setSelectedPlano(plano.id);
                      const range = getPlanoRange(plano.id);
                      setQuantidadeClientes(range.min.toString());
                    }}
                  >
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
            </div>
          </div>
        </div>

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
