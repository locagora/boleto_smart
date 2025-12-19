import { useState, useEffect } from "react";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { BarChart3, Shield, Zap, TrendingUp, DollarSign } from "lucide-react";
import { Link } from "react-router-dom";
import { UserNav } from "@/components/UserNav";

const carouselImages = [
  "https://i.postimg.cc/J4pDhtyc/image.png",
  "https://i.postimg.cc/1RJ5G293/image.png",
  "https://i.postimg.cc/85cXq76P/image.png",
];

const Index = () => {
  const [currentImageIndex, setCurrentImageIndex] = useState(0);

  useEffect(() => {
    const interval = setInterval(() => {
      setCurrentImageIndex((prev) => (prev + 1) % carouselImages.length);
    }, 4000);

    return () => clearInterval(interval);
  }, []);

  return (
    <div className="min-h-screen bg-gradient-to-b from-background to-muted">
      {/* Header */}
      <header className="border-b bg-card/80 backdrop-blur-sm sticky top-0 z-50">
        <div className="container mx-auto px-4 flex items-center justify-between">
          <div className="flex items-center gap-2">
            <img src="/logo.png" alt="BoletoSmart" className="h-20 scale-[2] origin-left" />
          </div>
          <nav className="hidden md:flex items-center gap-6">
            <Link to="/search" className="text-sm text-muted-foreground hover:text-foreground transition-colors">
              Buscar 2ª Via
            </Link>
            <UserNav />
          </nav>
        </div>
      </header>

      {/* Hero Section */}
      <section className="container mx-auto px-4 py-16 lg:py-24">
        <div className="grid lg:grid-cols-2 gap-8 items-start">
          {/* Left side - Text content */}
          <div className="space-y-8 text-center lg:text-left">
            <div className="inline-flex items-center gap-2 bg-primary/10 text-primary px-4 py-2 rounded-full text-sm font-medium">
              <Zap className="h-4 w-4" />
              Cobrança inteligente
            </div>
            <h1 className="text-4xl md:text-5xl lg:text-6xl font-bold tracking-tight text-foreground">
              Você ainda perde tempo entrando no banco todo dia só pra descobrir <span className="bg-gradient-to-r from-primary to-secondary bg-clip-text text-transparent">quem não pagou?</span>
            </h1>
            <p className="text-lg md:text-xl text-muted-foreground max-w-xl mx-auto lg:mx-0">
              Chega de trabalho braçal. Com o <strong>BoletoSmart</strong>, sua lista de inadimplentes aparece automaticamente na tela da equipe de cobrança. Sem planilha, sem print, sem WhatsApp. Você integra uma vez e nunca mais se preocupa com isso.
            </p>
            <div className="flex flex-col sm:flex-row gap-4 justify-center lg:justify-start">
              <Button asChild size="lg" className="text-base">
                <Link to="/planos">Começar agora</Link>
              </Button>
              <Button asChild size="lg" variant="outline" className="text-base">
                <Link to="/search">Consultar 2ª Via</Link>
              </Button>
            </div>
          </div>

          {/* Right side - Dashboard Screenshot Carousel */}
          <div className="relative hidden lg:block mt-16">
            <div className="relative overflow-hidden rounded-xl">
              {carouselImages.map((src, index) => (
                <img
                  key={index}
                  src={src}
                  alt={`Dashboard de cobranças - Imagem ${index + 1}`}
                  className={`w-full rounded-xl shadow-2xl border-2 border-muted transition-all duration-700 ${
                    index === currentImageIndex
                      ? "opacity-100 scale-100"
                      : "opacity-0 scale-95 absolute inset-0"
                  }`}
                />
              ))}
              {/* Overlay gradient */}
              <div className="absolute inset-0 bg-gradient-to-t from-background/20 to-transparent rounded-xl pointer-events-none" />

              {/* Live indicator */}
              <div className="absolute top-4 right-4 bg-card/90 backdrop-blur-sm shadow-lg rounded-full px-3 py-1.5 border flex items-center gap-2">
                <span className="h-2 w-2 bg-green-500 rounded-full animate-pulse"></span>
                <span className="text-xs text-green-600 font-medium">Ao vivo</span>
              </div>

              {/* Carousel indicators */}
              <div className="absolute bottom-4 left-1/2 -translate-x-1/2 flex gap-2">
                {carouselImages.map((_, index) => (
                  <button
                    key={index}
                    onClick={() => setCurrentImageIndex(index)}
                    className={`h-2 rounded-full transition-all duration-300 ${
                      index === currentImageIndex
                        ? "w-6 bg-primary"
                        : "w-2 bg-white/50 hover:bg-white/80"
                    }`}
                  />
                ))}
              </div>
            </div>

            {/* Floating notification */}
            <div className="absolute -top-4 -right-4 bg-card shadow-lg rounded-lg p-3 border animate-bounce">
              <div className="flex items-center gap-2">
                <div className="h-8 w-8 bg-green-100 rounded-full flex items-center justify-center">
                  <DollarSign className="h-4 w-4 text-green-600" />
                </div>
                <div>
                  <p className="text-xs text-muted-foreground">Novo pagamento</p>
                  <p className="text-sm font-semibold text-green-600">+ R$ 1.250,00</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        {/* Benefícios */}
        <div className="grid grid-cols-1 sm:grid-cols-3 gap-8 pt-16 mt-8 border-t max-w-4xl mx-auto">
          <div className="flex flex-col items-center text-center gap-3">
            <span className="text-5xl">⏱</span>
            <p className="text-base text-muted-foreground">
              Economize até <strong className="text-primary text-lg">80%</strong> do tempo com tarefas manuais
            </p>
          </div>
          <div className="flex flex-col items-center text-center gap-3">
            <span className="text-5xl">🔄</span>
            <p className="text-base text-muted-foreground">
              <strong className="text-primary text-lg">Sincronização automática</strong> com seu banco
            </p>
          </div>
          <div className="flex flex-col items-center text-center gap-3">
            <span className="text-5xl">👁</span>
            <p className="text-base text-muted-foreground">
              <strong className="text-primary text-lg">100%</strong> de visibilidade sobre quem pagou ou não
            </p>
          </div>
        </div>
      </section>

      {/* Features */}
      <section className="container mx-auto px-4 py-20 bg-gradient-to-b from-muted/30 to-background">
        <div className="text-center mb-12">
          <h2 className="text-3xl md:text-4xl font-bold text-foreground mb-4">
            Tudo que você precisa em um só lugar
          </h2>
          <p className="text-lg text-muted-foreground max-w-2xl mx-auto">
            Ferramentas poderosas para automatizar sua cobrança e aumentar a recuperação de crédito
          </p>
        </div>

        <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
          <Card className="group p-8 space-y-5 hover:shadow-2xl hover:scale-105 transition-all duration-300 border-2 border-transparent hover:border-primary/20 bg-card/80 backdrop-blur-sm flex flex-col items-center text-center">
            <div className="h-16 w-16 rounded-2xl bg-gradient-to-br from-primary/20 to-primary/5 flex items-center justify-center group-hover:scale-110 transition-transform duration-300">
              <BarChart3 className="h-8 w-8 text-primary" />
            </div>
            <h3 className="text-xl font-bold text-foreground">Dashboards Inteligentes</h3>
            <p className="text-muted-foreground leading-relaxed">
              Visualize KPIs e métricas em tempo real com gráficos interativos
            </p>
          </Card>

          <Card className="group p-8 space-y-5 hover:shadow-2xl hover:scale-105 transition-all duration-300 border-2 border-transparent hover:border-secondary/20 bg-card/80 backdrop-blur-sm flex flex-col items-center text-center">
            <div className="h-16 w-16 rounded-2xl bg-gradient-to-br from-secondary/20 to-secondary/5 flex items-center justify-center group-hover:scale-110 transition-transform duration-300">
              <Zap className="h-8 w-8 text-secondary" />
            </div>
            <h3 className="text-xl font-bold text-foreground">Integração Asaas</h3>
            <p className="text-muted-foreground leading-relaxed">
              Sincronização automática via webhooks para dados sempre atualizados
            </p>
          </Card>

          <Card className="group p-8 space-y-5 hover:shadow-2xl hover:scale-105 transition-all duration-300 border-2 border-transparent hover:border-green-500/20 bg-card/80 backdrop-blur-sm flex flex-col items-center text-center">
            <div className="h-16 w-16 rounded-2xl bg-gradient-to-br from-green-500/20 to-green-500/5 flex items-center justify-center group-hover:scale-110 transition-transform duration-300">
              <Shield className="h-8 w-8 text-green-500" />
            </div>
            <h3 className="text-xl font-bold text-foreground">Controle de Acesso</h3>
            <p className="text-muted-foreground leading-relaxed">
              Níveis de permissão para Masters e Franqueados
            </p>
          </Card>

          <Card className="group p-8 space-y-5 hover:shadow-2xl hover:scale-105 transition-all duration-300 border-2 border-transparent hover:border-amber-500/20 bg-card/80 backdrop-blur-sm flex flex-col items-center text-center">
            <div className="h-16 w-16 rounded-2xl bg-gradient-to-br from-amber-500/20 to-amber-500/5 flex items-center justify-center group-hover:scale-110 transition-transform duration-300">
              <TrendingUp className="h-8 w-8 text-amber-500" />
            </div>
            <h3 className="text-xl font-bold text-foreground">Relatórios Detalhados</h3>
            <p className="text-muted-foreground leading-relaxed">
              Análises completas de inadimplência e performance por unidade
            </p>
          </Card>
        </div>
      </section>

      {/* CTA Section */}
      <section className="container mx-auto px-4 py-20">
        <Card className="relative overflow-hidden p-12 md:p-16 bg-gradient-to-br from-primary via-primary/90 to-secondary text-primary-foreground shadow-2xl border-0">
          {/* Decorative elements */}
          <div className="absolute top-0 left-0 w-72 h-72 bg-white/5 rounded-full -translate-x-1/2 -translate-y-1/2" />
          <div className="absolute bottom-0 right-0 w-96 h-96 bg-white/5 rounded-full translate-x-1/3 translate-y-1/3" />
          <div className="absolute top-1/2 right-10 w-20 h-20 bg-white/10 rounded-full hidden md:block" />
          <div className="absolute bottom-10 left-10 w-12 h-12 bg-white/10 rounded-full hidden md:block" />

          <div className="relative z-10 max-w-3xl mx-auto text-center space-y-8">
            <div className="inline-flex items-center gap-2 bg-white/20 backdrop-blur-sm px-4 py-2 rounded-full text-sm font-medium">
              <Zap className="h-4 w-4" />
              Automatize sua cobrança
            </div>
            <h2 className="text-3xl md:text-4xl lg:text-5xl font-bold leading-tight">
              Chega de cobrança manual. Sua franquia merece mais agilidade.
            </h2>
            <p className="text-lg md:text-xl opacity-90 max-w-2xl mx-auto">
              Empresas de sucesso já automatizaram suas cobranças com o BoletoSmart. Agora é a sua vez de recuperar mais sem perder tempo com tarefas repetitivas.
            </p>
            <div className="pt-4">
              <Button asChild size="lg" className="text-base bg-white text-primary hover:bg-white/90 shadow-lg px-8 py-6 text-lg font-semibold">
                <Link to="/planos">Quero automatizar minha franquia agora</Link>
              </Button>
            </div>
          </div>
        </Card>
      </section>

      {/* Footer */}
      <footer className="border-t bg-card/50 mt-16">
        <div className="container mx-auto px-4 py-8">
          <p className="text-sm text-muted-foreground text-center">
            © 2025 BoletoSmart. Todos os direitos reservados.
          </p>
        </div>
      </footer>
    </div>
  );
};

export default Index;
