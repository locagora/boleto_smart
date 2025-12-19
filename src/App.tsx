import { Toaster } from "@/components/ui/toaster";
import { Toaster as Sonner } from "@/components/ui/sonner";
import { TooltipProvider } from "@/components/ui/tooltip";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Index from "./pages/Index";
import Dashboard from "./pages/Dashboard";
import Search from "./pages/Search";
import Auth from "./pages/Auth";
import SuperAdmin from "./pages/SuperAdmin";
import MasterAdmin from "./pages/MasterAdmin";
import FranquiaSettings from "./pages/FranquiaSettings";
import Planos from "./pages/Planos";
import AguardandoAprovacao from "./pages/AguardandoAprovacao";
import PaymentPix from "./pages/PaymentPix";
import PaymentBoleto from "./pages/PaymentBoleto";
import NotFound from "./pages/NotFound";

const queryClient = new QueryClient();

const App = () => (
  <QueryClientProvider client={queryClient}>
    <TooltipProvider>
      <Toaster />
      <Sonner />
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Index />} />
          <Route path="/dashboard" element={<Dashboard />} />
          <Route path="/search" element={<Search />} />
          <Route path="/auth" element={<Auth />} />
          <Route path="/super-admin" element={<SuperAdmin />} />
          <Route path="/master-admin" element={<MasterAdmin />} />
          <Route path="/franquia-settings" element={<FranquiaSettings />} />
          <Route path="/planos" element={<Planos />} />
          <Route path="/aguardando-aprovacao" element={<AguardandoAprovacao />} />
          <Route path="/payment_pix" element={<PaymentPix />} />
          <Route path="/payment_boleto" element={<PaymentBoleto />} />
          {/* ADD ALL CUSTOM ROUTES ABOVE THE CATCH-ALL "*" ROUTE */}
          <Route path="*" element={<NotFound />} />
        </Routes>
      </BrowserRouter>
    </TooltipProvider>
  </QueryClientProvider>
);

export default App;
