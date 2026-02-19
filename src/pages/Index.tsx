import { useState, useEffect } from "react";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { BarChart3, Shield, Zap, TrendingUp, DollarSign, QrCode, FileText, Eye, CheckCircle, Clock, RefreshCw, ArrowRight } from "lucide-react";
import { Link } from "react-router-dom";
import { UserNav } from "@/components/UserNav";
import { useScrollAnimation } from "@/hooks/useScrollAnimation";

const Index = () => {
  const [scrolled, setScrolled] = useState(false);

  useEffect(() => {
    const onScroll = () => setScrolled(window.scrollY > 20);
    window.addEventListener("scroll", onScroll, { passive: true });
    return () => window.removeEventListener("scroll", onScroll);
  }, []);

  const benefitsAnim = useScrollAnimation();
  const pixBoletoAnim = useScrollAnimation();
  const featuresAnim = useScrollAnimation();
  const ctaAnim = useScrollAnimation();

  return (
    <div className="min-h-screen bg-background">
      {/* Header */}
      <header
        className={`bg-background/80 backdrop-blur-xl sticky top-0 z-50 transition-all duration-300 ${
          scrolled ? "shadow-[0_1px_16px_hsl(196_64%_33%/0.08)]" : ""
        }`}
      >
        <div className="gradient-line" />
        <div className="container mx-auto px-4 flex items-center justify-between h-16">
          <div className="flex items-center gap-2">
            <img src="/logo.png" alt="BoletoSmart" className="h-20 scale-[2] origin-left" />
          </div>
          <nav className="hidden md:flex items-center gap-6">
            <Link
              to="/search"
              className="text-sm text-muted-foreground hover:text-primary transition-colors duration-200"
            >
              Buscar 2ª Via
            </Link>
            <UserNav />
          </nav>
        </div>
      </header>

      {/* Hero Section */}
      <section className="relative overflow-hidden bg-hero-mesh bg-dot-pattern">
        <div className="container mx-auto px-4 py-20 lg:py-28">
          <div className="grid lg:grid-cols-2 gap-12 lg:gap-16 items-start">
            {/* Left side - Text content */}
            <div className="space-y-8 text-center lg:text-left animate-fade-in-up">
              <div className="inline-flex items-center gap-2 px-4 py-2 rounded-full text-sm font-semibold bg-gradient-to-r from-primary/10 to-secondary/10 border border-primary/15 text-primary">
                <Zap className="h-4 w-4" />
                Cobrança inteligente
              </div>

              <h1 className="text-4xl md:text-5xl lg:text-6xl xl:text-7xl font-extrabold tracking-tight text-foreground leading-[1.08]">
                Você ainda perde tempo entrando no banco todo dia só pra descobrir{" "}
                <span className="text-gradient-brand">quem não pagou?</span>
              </h1>

              <p className="text-lg md:text-xl text-muted-foreground max-w-xl mx-auto lg:mx-0 leading-relaxed">
                Chega de trabalho braçal. Com o <strong className="text-foreground">BoletoSmart</strong>, sua lista de
                inadimplentes aparece automaticamente na tela da equipe de cobrança. Sem planilha, sem print, sem
                WhatsApp.
              </p>

              <div className="flex flex-col sm:flex-row gap-4 justify-center lg:justify-start pt-2">
                <Button
                  asChild
                  size="lg"
                  className="text-base bg-gradient-to-r from-primary to-primary-hover text-white shadow-lg shadow-primary/25 hover:shadow-xl hover:shadow-primary/30 transition-all duration-300 px-8 py-6 text-lg font-semibold rounded-xl animate-pulse-glow"
                >
                  <Link to="/planos">
                    Começar agora
                    <ArrowRight className="ml-2 h-5 w-5" />
                  </Link>
                </Button>
                <Button
                  asChild
                  size="lg"
                  variant="outline"
                  className="text-base px-8 py-6 text-lg rounded-xl border-primary/20 hover:bg-primary/5 hover:border-primary/30 transition-all duration-300"
                >
                  <Link to="/search">Consultar 2ª Via</Link>
                </Button>
              </div>
            </div>

            {/* Right side - Video */}
            <div className="relative mt-4 lg:mt-8 opacity-0 animate-fade-in-right" style={{ animationDelay: "200ms" }}>
              {/* Gradient border wrapper */}
              <div className="relative p-[2px] rounded-2xl bg-gradient-to-br from-primary/30 via-secondary/15 to-primary/10 shadow-2xl">
                <div className="rounded-2xl overflow-hidden bg-background">
                  <div style={{ padding: "56.25% 0 0 0", position: "relative" }}>
                    <iframe
                      src="https://player.vimeo.com/video/1161537449?autoplay=0&loop=1"
                      style={{ position: "absolute", top: 0, left: 0, width: "100%", height: "100%" }}
                      frameBorder="0"
                      allow="autoplay; fullscreen; picture-in-picture"
                      allowFullScreen
                      title="BoletoSmart Demo"
                    />
                  </div>
                </div>
              </div>

              {/* Video CTA */}
              <div className="mt-5 text-center">
                <p className="text-sm text-muted-foreground flex items-center justify-center gap-2">
                  <span className="inline-flex items-center justify-center h-7 w-7 rounded-full bg-gradient-to-br from-primary/15 to-secondary/10">
                    <Zap className="h-3.5 w-3.5 text-primary" />
                  </span>
                  <span>
                    Clique no <strong className="text-primary">play</strong> e descubra em{" "}
                    <strong className="text-primary">1 minuto</strong> como funciona
                  </span>
                </p>
              </div>

              {/* Floating notification */}
              <div className="absolute -top-4 -right-4 glass-card shadow-xl rounded-xl p-3.5 border-l-4 border-l-secondary animate-float">
                <div className="flex items-center gap-3">
                  <div className="h-9 w-9 bg-gradient-to-br from-secondary to-accent rounded-full flex items-center justify-center shadow-sm">
                    <DollarSign className="h-4.5 w-4.5 text-white" />
                  </div>
                  <div>
                    <p className="text-xs text-muted-foreground font-medium">Novo pagamento</p>
                    <p className="text-sm font-bold text-secondary">+ R$ 1.250,00</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          {/* Benefits Row */}
          <div
            ref={benefitsAnim.ref}
            className={`grid grid-cols-1 sm:grid-cols-3 gap-6 pt-20 mt-12 max-w-5xl mx-auto ${
              benefitsAnim.isVisible ? "" : "opacity-0"
            }`}
          >
            <div className="gradient-line col-span-full mb-6" />
            {[
              {
                icon: Clock,
                metric: "80%",
                label: "menos tempo",
                desc: "Economize em tarefas manuais de cobrança",
                color: "primary" as const,
                delay: "0ms",
              },
              {
                icon: RefreshCw,
                metric: "Auto",
                label: "sincronização",
                desc: "Integração direta com seu banco via Asaas",
                color: "secondary" as const,
                delay: "150ms",
              },
              {
                icon: Eye,
                metric: "100%",
                label: "visibilidade",
                desc: "Saiba exatamente quem pagou ou não",
                color: "primary" as const,
                delay: "300ms",
              },
            ].map((item, i) => (
              <div
                key={i}
                className={`group relative flex flex-col items-center text-center gap-3 p-6 rounded-2xl border border-transparent hover:border-${item.color}/15 hover:bg-card/60 hover:shadow-lg transition-all duration-400 cursor-default ${
                  benefitsAnim.isVisible ? "animate-fade-in-up" : ""
                }`}
                style={{ animationDelay: item.delay }}
              >
                <div className={`h-14 w-14 rounded-2xl flex items-center justify-center shadow-md transition-transform duration-300 group-hover:scale-110 ${
                  item.color === "primary"
                    ? "bg-gradient-to-br from-primary to-primary-hover shadow-primary/20"
                    : "bg-gradient-to-br from-secondary to-accent shadow-secondary/20"
                }`}>
                  <item.icon className="h-6 w-6 text-white" />
                </div>
                <div className="mt-1">
                  <span className={`text-3xl font-extrabold font-heading ${
                    item.color === "primary" ? "text-primary" : "text-secondary"
                  }`}>
                    {item.metric}
                  </span>
                  <span className="block text-sm font-semibold text-foreground/80 uppercase tracking-wide mt-0.5">
                    {item.label}
                  </span>
                </div>
                <p className="text-sm text-muted-foreground leading-relaxed">{item.desc}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* PIX & Boletos Section */}
      <section className="relative bg-dot-pattern">
        <div
          ref={pixBoletoAnim.ref}
          className="container mx-auto px-4 py-24"
        >
          <div className={`text-center mb-14 ${pixBoletoAnim.isVisible ? "animate-fade-in-up" : "opacity-0"}`}>
            <div className="inline-flex items-center gap-2 bg-secondary/10 text-secondary px-4 py-2 rounded-full text-sm font-semibold mb-5">
              <Eye className="h-4 w-4" />
              Visualização completa
            </div>
            <h2 className="text-3xl md:text-4xl lg:text-5xl font-bold text-foreground mb-5">
              PIX e Boletos <span className="text-gradient-brand">em um só lugar</span>
            </h2>
            <p className="text-lg text-muted-foreground max-w-2xl mx-auto leading-relaxed">
              Acompanhe todos os pagamentos da sua empresa em tempo real, seja por PIX ou boleto bancário
            </p>
          </div>

          <div className="grid md:grid-cols-2 gap-8 max-w-5xl mx-auto">
            {/* Card PIX */}
            <Card
              className={`group relative overflow-hidden p-8 transition-all duration-500 border border-transparent hover:border-secondary/20 bg-card hover:shadow-2xl
                before:absolute before:top-0 before:left-0 before:right-0 before:h-1
                before:bg-gradient-to-r before:from-secondary before:to-accent
                before:scale-x-0 before:origin-left hover:before:scale-x-100
                before:transition-transform before:duration-500
                ${pixBoletoAnim.isVisible ? "animate-fade-in-up" : "opacity-0"}`}
              style={{ animationDelay: "100ms" }}
            >
              <div className="absolute top-0 right-0 w-40 h-40 bg-secondary/5 rounded-full -translate-y-1/2 translate-x-1/2" />
              <div className="relative z-10">
                <div className="h-16 w-16 rounded-2xl bg-gradient-to-br from-secondary to-accent flex items-center justify-center mb-6 shadow-lg shadow-secondary/20 group-hover:scale-110 transition-transform duration-300">
                  <QrCode className="h-8 w-8 text-white" />
                </div>
                <h3 className="text-2xl font-bold text-foreground mb-3">Pagamentos PIX</h3>
                <p className="text-muted-foreground mb-6 leading-relaxed">
                  Visualize todos os pagamentos via PIX recebidos em tempo real com confirmação instantânea.
                </p>
                <ul className="space-y-3">
                  {["Confirmação instantânea de pagamento", "Sincronização automática com Asaas", "Histórico completo de transações"].map((text, i) => (
                    <li key={i} className="flex items-center gap-3 text-sm text-foreground">
                      <CheckCircle className="h-5 w-5 text-secondary flex-shrink-0" />
                      {text}
                    </li>
                  ))}
                </ul>
              </div>
            </Card>

            {/* Card Boletos */}
            <Card
              className={`group relative overflow-hidden p-8 transition-all duration-500 border border-transparent hover:border-primary/20 bg-card hover:shadow-2xl
                before:absolute before:top-0 before:left-0 before:right-0 before:h-1
                before:bg-gradient-to-r before:from-primary before:to-primary-hover
                before:scale-x-0 before:origin-left hover:before:scale-x-100
                before:transition-transform before:duration-500
                ${pixBoletoAnim.isVisible ? "animate-fade-in-up" : "opacity-0"}`}
              style={{ animationDelay: "250ms" }}
            >
              <div className="absolute top-0 right-0 w-40 h-40 bg-primary/5 rounded-full -translate-y-1/2 translate-x-1/2" />
              <div className="relative z-10">
                <div className="h-16 w-16 rounded-2xl bg-gradient-to-br from-primary to-primary-hover flex items-center justify-center mb-6 shadow-lg shadow-primary/20 group-hover:scale-110 transition-transform duration-300">
                  <FileText className="h-8 w-8 text-white" />
                </div>
                <h3 className="text-2xl font-bold text-foreground mb-3">Boletos Bancários</h3>
                <p className="text-muted-foreground mb-6 leading-relaxed">
                  Gerencie todos os boletos emitidos e acompanhe o status de cada um. Saiba quem pagou, quem está
                  vencido e quem está pendente.
                </p>
                <ul className="space-y-3">
                  {["Status em tempo real (pago, vencido, pendente)", "Emissão de 2ª via simplificada", "Filtros por data e status"].map((text, i) => (
                    <li key={i} className="flex items-center gap-3 text-sm text-foreground">
                      <CheckCircle className="h-5 w-5 text-primary flex-shrink-0" />
                      {text}
                    </li>
                  ))}
                </ul>
              </div>
            </Card>
          </div>
        </div>
      </section>

      {/* Features */}
      <section className="relative">
        <div className="gradient-line" />
        <div
          ref={featuresAnim.ref}
          className="container mx-auto px-4 py-24"
        >
          <div className={`text-center mb-14 ${featuresAnim.isVisible ? "animate-fade-in-up" : "opacity-0"}`}>
            <h2 className="text-3xl md:text-4xl lg:text-5xl font-bold text-foreground mb-5">
              Tudo que você precisa <span className="text-gradient-brand">em um só lugar</span>
            </h2>
            <p className="text-lg text-muted-foreground max-w-2xl mx-auto leading-relaxed">
              Ferramentas poderosas para automatizar sua cobrança e aumentar a recuperação de crédito
            </p>
          </div>

          <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-6 lg:gap-8">
            {[
              { icon: BarChart3, title: "Dashboards Inteligentes", desc: "Visualize KPIs e métricas em tempo real com gráficos interativos", num: "01", color: "primary" },
              { icon: Zap, title: "Integração Asaas", desc: "Sincronização automática via webhooks para dados sempre atualizados", num: "02", color: "secondary" },
              { icon: Shield, title: "Controle de Acesso", desc: "Níveis de permissão para Masters e Franqueados", num: "03", color: "secondary" },
              { icon: TrendingUp, title: "Relatórios Detalhados", desc: "Análises completas de inadimplência e performance por unidade", num: "04", color: "primary" },
            ].map((item, i) => (
              <Card
                key={i}
                className={`group relative p-8 space-y-5 hover:shadow-xl hover:-translate-y-2 transition-all duration-500 border border-transparent hover:border-primary/15 bg-card flex flex-col items-center text-center overflow-hidden
                  ${featuresAnim.isVisible ? "animate-fade-in-up" : "opacity-0"}`}
                style={{ animationDelay: `${i * 120}ms` }}
              >
                {/* Index number */}
                <span className="absolute top-4 right-5 text-6xl font-extrabold text-primary/[0.04] leading-none select-none">
                  {item.num}
                </span>

                <div className={`h-16 w-16 rounded-2xl flex items-center justify-center transition-all duration-300 ring-1
                  ${item.color === "primary"
                    ? "bg-gradient-to-br from-primary/15 to-primary/5 ring-primary/10 group-hover:ring-primary/20"
                    : "bg-gradient-to-br from-secondary/15 to-secondary/5 ring-secondary/10 group-hover:ring-secondary/20"
                  }`}
                >
                  <item.icon className={`h-8 w-8 ${item.color === "primary" ? "text-primary" : "text-secondary"}`} />
                </div>

                <h3 className="text-xl font-bold text-foreground">{item.title}</h3>
                <p className="text-muted-foreground leading-relaxed">{item.desc}</p>
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* CTA Section */}
      <section className="container mx-auto px-4 py-20">
        <div
          ref={ctaAnim.ref}
          className={`relative overflow-hidden p-12 md:p-16 lg:p-20 rounded-2xl shadow-2xl text-white
            ${ctaAnim.isVisible ? "animate-scale-in" : "opacity-0"}`}
          style={{ background: "linear-gradient(135deg, hsl(198 61% 30%), hsl(196 64% 33%), hsl(140 39% 49%))" }}
        >
          {/* Dot pattern overlay */}
          <div className="absolute inset-0 bg-dot-pattern-white pointer-events-none" />

          {/* Decorative elements */}
          <div className="absolute top-0 left-0 w-80 h-80 border border-white/10 rounded-full -translate-x-1/2 -translate-y-1/2" />
          <div className="absolute bottom-0 right-0 w-[28rem] h-[28rem] border border-white/10 rounded-full translate-x-1/3 translate-y-1/3" />
          <div className="absolute top-1/2 right-12 w-24 h-24 border border-white/10 rounded-full hidden md:block" />
          <div className="absolute bottom-12 left-12 w-14 h-14 border border-white/10 rounded-full hidden md:block" />

          <div className="relative z-10 max-w-3xl mx-auto text-center space-y-8">
            <div className="inline-flex items-center gap-2 bg-white/15 backdrop-blur-sm px-5 py-2.5 rounded-full text-sm font-semibold border border-white/10">
              <Zap className="h-4 w-4" />
              Automatize sua cobrança
            </div>
            <h2 className="text-3xl md:text-4xl lg:text-5xl font-bold leading-tight">
              Chega de cobrança manual. Sua franquia merece mais agilidade.
            </h2>
            <p className="text-lg md:text-xl opacity-90 max-w-2xl mx-auto leading-relaxed">
              Empresas de sucesso já automatizaram suas cobranças com o BoletoSmart. Agora é a sua vez de recuperar mais
              sem perder tempo com tarefas repetitivas.
            </p>
            <div className="pt-4">
              <Button
                asChild
                size="lg"
                className="text-base bg-white text-primary hover:bg-white/95 shadow-xl shadow-black/10 px-10 py-6 text-lg font-bold rounded-xl hover:ring-2 hover:ring-white/30 transition-all duration-300"
              >
                <Link to="/planos">
                  Quero automatizar minha franquia agora
                  <ArrowRight className="ml-2 h-5 w-5" />
                </Link>
              </Button>
            </div>
          </div>
        </div>
      </section>

      {/* Footer */}
      <footer className="mt-8">
        <div className="gradient-line" />
        <div className="container mx-auto px-4 py-8">
          <div className="flex flex-col sm:flex-row items-center justify-between gap-4">
            <img src="/logo.png" alt="BoletoSmart" className="h-10 scale-[1.8] origin-left" />
            <p className="text-sm text-muted-foreground">
              © 2026 BoletoSmart. Todos os direitos reservados.
            </p>
          </div>
        </div>
      </footer>
    </div>
  );
};

export default Index;
