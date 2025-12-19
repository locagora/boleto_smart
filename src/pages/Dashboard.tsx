import { Card } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { TrendingUp, TrendingDown, DollarSign, AlertCircle, RefreshCw, ChevronDown, ChevronUp, ExternalLink, MessageCircle, Settings, Users, Search, Filter } from "lucide-react";
import { Link, useNavigate } from "react-router-dom";
import { useState, useEffect, useMemo } from "react";
import { toast } from "sonner";
import { supabase } from "@/integrations/supabase/client";
import type { PaymentWithCustomer } from "@/types/payment";
import { Collapsible, CollapsibleContent, CollapsibleTrigger } from "@/components/ui/collapsible";
import { DashboardLayout } from "@/components/DashboardLayout";
import { BarChart, Bar, XAxis, YAxis, Tooltip, ResponsiveContainer, Cell, LabelList } from 'recharts';

type UserRole = 'franquia' | 'master_regional' | 'super_admin';

interface FranquiaData {
  id: string;
  nome: string;
  payments: PaymentWithCustomer[];
}

interface MasterRegionalData {
  id: string;
  nome: string;
  franquias: FranquiaData[];
}

const Dashboard = () => {
  const navigate = useNavigate();
  const [payments, setPayments] = useState<PaymentWithCustomer[]>([]);
  const [loading, setLoading] = useState(false);
  const [loadingFranquias, setLoadingFranquias] = useState<Record<string, boolean>>({});
  const [userRole, setUserRole] = useState<UserRole | null>(null);
  const [franquiasData, setFranquiasData] = useState<FranquiaData[]>([]);
  const [mastersData, setMastersData] = useState<MasterRegionalData[]>([]);
  const [openSections, setOpenSections] = useState<Record<string, boolean>>({});
  const [franquiaName, setFranquiaName] = useState<string>("");
  const [franquiaInativa, setFranquiaInativa] = useState(false);
  const [searchTerm, setSearchTerm] = useState("");
  const [startDate, setStartDate] = useState("");
  const [endDate, setEndDate] = useState("");


  // Load payments from Supabase on mount
  useEffect(() => {
    loadPaymentsFromDatabase();
  }, []);

  const loadPaymentsFromDatabase = async () => {
    try {
      const { data: { user } } = await supabase.auth.getUser();
      if (!user) {
        toast.error("Usuário não autenticado");
        return;
      }

      const { data: userRoles } = await supabase
        .from('user_roles')
        .select('role')
        .eq('user_id', user.id);

      if (!userRoles || userRoles.length === 0) {
        // Usuário sem role - redirecionar para aguardando aprovação
        navigate('/aguardando-aprovacao');
        return;
      }

      const roles = userRoles.map(r => r.role);
      let role: UserRole = 'franquia';
      
      if (roles.includes('super_admin')) {
        role = 'super_admin';
      } else if (roles.includes('master_regional')) {
        role = 'master_regional';
      }
      
      setUserRole(role);

      // Fetch all customers first
      const { data: customersData } = await supabase.from('customers').select('*');
      const customersMap = new Map(customersData?.map(c => [c.id, c]) || []);

      if (role === 'super_admin') {
        // Super admin: group by master regional
        const { data: masters } = await supabase
          .from('master_regionais')
          .select('id, nome');
        
        const { data: franquias } = await supabase
          .from('franquias')
          .select('id, nome, master_regional_id');

        const { data: paymentsData } = await supabase
          .from('payments')
          .select('*')
          .order('due_date', { ascending: false });

        const mastersDataResult: MasterRegionalData[] = (masters || []).map(master => {
          const masterFranquias = (franquias || []).filter(f => f.master_regional_id === master.id);
          
          return {
            id: master.id,
            nome: master.nome,
            franquias: masterFranquias.map(franquia => ({
              id: franquia.id,
              nome: franquia.nome,
              payments: processPayments(
                (paymentsData || []).filter(p => p.franquia_id === franquia.id),
                customersMap
              )
            }))
          };
        });

        setMastersData(mastersDataResult);
        
        // Set all payments for global KPIs
        setPayments(processPayments(paymentsData || [], customersMap));
        
      } else if (role === 'master_regional') {
        // Master regional: group by franchise
        // Buscar associações do usuário com master_regionais
        const { data: allUserEntities, error: entitiesError } = await supabase
          .from('user_entities')
          .select('entity_id, entity_type')
          .eq('user_id', user.id);

        console.log('=== MASTER REGIONAL DEBUG ===');
        console.log('User ID:', user.id);
        console.log('All user entities:', allUserEntities);
        console.log('Entities error:', entitiesError);

        // Filtrar apenas as associações de master_regional
        const userEntities = (allUserEntities || [])
          .filter((ue) => ue.entity_type === 'master_regional')
          .map((ue) => ({ entity_id: ue.entity_id }));

        console.log('Filtered master entities:', userEntities);

        if (!userEntities || userEntities.length === 0) {
          // Fallback: tentar buscar por email (compatibilidade com dados antigos)
          const { data: masterRegional } = await supabase
            .from('master_regionais')
            .select('id')
            .eq('email', user.email)
            .single();

          if (!masterRegional) {
            toast.error("Master Regional não encontrado. Entre em contato com o administrador.");
            return;
          }

          // Usar o ID encontrado por email
          userEntities.push({ entity_id: masterRegional.id });
        }

        const masterIds = userEntities.map((ue: any) => ue.entity_id);

        // Buscar apenas franquias ativas (ativo = true) de todos os masters associados
        const { data: franquias, error: franquiasError } = await supabase
          .from('franquias')
          .select('id, nome')
          .in('master_regional_id', masterIds)
          .eq('ativo', true);

        console.log('Franquias found:', franquias);
        console.log('Franquias error:', franquiasError);

        const franquiaIds = (franquias || []).map(f => f.id);
        console.log('Franquia IDs:', franquiaIds);
        
        const { data: paymentsData, error: paymentsError } = await supabase
          .from('payments')
          .select('*')
          .in('franquia_id', franquiaIds)
          .order('due_date', { ascending: false });

        console.log('Payments data count:', paymentsData?.length);
        console.log('Payments error:', paymentsError);
        console.log('First 3 payments:', paymentsData?.slice(0, 3));

        const franquiasDataResult: FranquiaData[] = (franquias || []).map(franquia => {
          const franquiaPayments = (paymentsData || []).filter(p => p.franquia_id === franquia.id);
          console.log(`Franquia ${franquia.nome}: ${franquiaPayments.length} payments`);
          return {
            id: franquia.id,
            nome: franquia.nome,
            payments: processPayments(franquiaPayments, customersMap)
          };
        });

        console.log('Final franquiasDataResult:', franquiasDataResult.map(f => ({ nome: f.nome, payments: f.payments.length })));

        setFranquiasData(franquiasDataResult);
        setPayments(processPayments(paymentsData || [], customersMap));
        
      } else {
        // Franquia: show only own data
        // Buscar associações do usuário com franquias
        const userEntitiesResult = await supabase
          .from('user_entities' as any)
          .select('entity_id')
          .eq('user_id', user.id)
          .eq('entity_type', 'franquia');
        const userEntities = userEntitiesResult.data as unknown as { entity_id: string }[] | null;

        let franquiaId: string | null = null;

        if (userEntities && userEntities.length > 0) {
          // Usar a primeira franquia associada (pode ser expandido para múltiplas)
          franquiaId = userEntities[0].entity_id;
        } else {
          // Fallback: tentar buscar por email (compatibilidade com dados antigos)
          const { data: franquiaByEmail } = await supabase
            .from('franquias')
            .select('id')
            .eq('email', user.email)
            .maybeSingle();

          if (franquiaByEmail) {
            franquiaId = franquiaByEmail.id;
          }
        }

        if (!franquiaId) {
          toast.error("Franquia não encontrada para este usuário");
          return;
        }

        // Buscar dados da franquia
        const { data: franquia } = await supabase
          .from('franquias')
          .select('id, nome, ativo')
          .eq('id', franquiaId)
          .single();

        if (!franquia) {
          toast.error("Franquia não encontrada");
          return;
        }

        setFranquiaName(franquia.nome);

        // Verificar se a franquia está inativa
        if (!franquia.ativo) {
          setFranquiaInativa(true);
          return; // Não carregar dados se inativa
        }

        setFranquiaInativa(false);

        // Fetch customers for this franchise (RLS will filter)
        const { data: franquiaCustomers } = await supabase
          .from('customers')
          .select('*')
          .eq('franquia_id', franquia.id);

        const franquiaCustomersMap = new Map(franquiaCustomers?.map(c => [c.id, c]) || []);

        const { data: paymentsData } = await supabase
          .from('payments')
          .select('*')
          .eq('franquia_id', franquia.id)
          .order('due_date', { ascending: false });

        setPayments(processPayments(paymentsData || [], franquiaCustomersMap));
      }
    } catch (error) {
      console.error('Error loading payments:', error);
      toast.error("Erro ao carregar dados do banco");
    }
  };

  const processPayments = (paymentsData: any[], customersMap: Map<string, any>): PaymentWithCustomer[] => {
    return paymentsData.map(payment => ({
      object: 'payment',
      id: payment.id,
      dateCreated: payment.date_created,
      customer: payment.customer_id,
      subscription: payment.subscription,
      checkoutSession: null,
      paymentLink: null,
      value: parseFloat(payment.value.toString()),
      netValue: payment.net_value ? parseFloat(payment.net_value.toString()) : 0,
      originalValue: null,
      interestValue: null,
      description: payment.description || '',
      billingType: payment.billing_type,
      canBePaidAfterDueDate: true,
      pixTransaction: null,
      status: payment.status as 'CONFIRMED' | 'OVERDUE' | 'PENDING' | 'RECEIVED',
      dueDate: payment.due_date,
      originalDueDate: payment.original_due_date || payment.due_date,
      paymentDate: payment.payment_date,
      clientPaymentDate: null,
      installmentNumber: null,
      invoiceUrl: payment.invoice_url || '',
      invoiceNumber: payment.invoice_number || '',
      externalReference: null,
      deleted: false,
      anticipated: false,
      anticipable: false,
      creditDate: null,
      estimatedCreditDate: null,
      transactionReceiptUrl: null,
      nossoNumero: payment.nosso_numero || '',
      bankSlipUrl: payment.bank_slip_url || '',
      lastInvoiceViewedDate: null,
      lastBankSlipViewedDate: null,
      discount: (payment.discount as any) || { value: 0, limitDate: null, dueDateLimitDays: 0, type: 'PERCENTAGE' },
      fine: (payment.fine as any) || { value: 0, type: 'PERCENTAGE' },
      interest: (payment.interest as any) || { value: 0, type: 'PERCENTAGE' },
      postalService: false,
      escrow: null,
      refunds: null,
      franquia_id: payment.franquia_id,
      customerData: customersMap.get(payment.customer_id) ? {
        object: 'customer',
        id: customersMap.get(payment.customer_id)!.id,
        dateCreated: customersMap.get(payment.customer_id)!.date_created,
        name: customersMap.get(payment.customer_id)!.name,
        email: customersMap.get(payment.customer_id)!.email,
        company: null,
        phone: null,
        mobilePhone: customersMap.get(payment.customer_id)!.mobile_phone,
        address: null,
        addressNumber: null,
        complement: null,
        province: null,
        postalCode: null,
        cpfCnpj: customersMap.get(payment.customer_id)!.cpf_cnpj,
        personType: customersMap.get(payment.customer_id)!.person_type as 'FISICA' | 'JURIDICA',
        deleted: false,
        additionalEmails: null,
        externalReference: null,
        notificationDisabled: false,
        observations: null,
        municipalInscription: null,
        stateInscription: null,
        canDelete: true,
        cannotBeDeletedReason: null,
        canEdit: true,
        cannotEditReason: null,
        city: null,
        cityName: customersMap.get(payment.customer_id)!.city_name,
        state: customersMap.get(payment.customer_id)!.state,
        country: customersMap.get(payment.customer_id)!.country
      } : undefined
    }));
  };

  const handleRefresh = async (franquiaNome?: string) => {
    setLoading(true);
    toast.info("Processando dados do webhook...");
    
    try {
      // For super_admin, refresh all franchises
      if (userRole === 'super_admin' && !franquiaNome) {
        const { data: franquias } = await supabase.from('franquias').select('nome');
        let totalProcessed = 0;
        
        for (const franquia of franquias || []) {
          try {
            const { data } = await supabase.functions.invoke('fetch-payments', {
              body: { franquiaNome: franquia.nome }
            });
            totalProcessed += data?.stats?.paymentsProcessed || 0;
          } catch (err) {
            console.error(`Error refreshing ${franquia.nome}:`, err);
          }
        }
        
        await loadPaymentsFromDatabase();
        toast.success(`Dados atualizados! ${totalProcessed} cobranças processadas.`);
      } else if (userRole === 'master_regional' && !franquiaNome) {
        // For master_regional without specific franchise, refresh all their franchises SEQUENTIALLY
        let totalProcessed = 0;
        
        for (const franquia of franquiasData) {
          try {
            // Mark this specific franchise as loading
            setLoadingFranquias(prev => ({ ...prev, [franquia.id]: true }));
            toast.info(`Processando ${franquia.nome}...`);
            
            const { data, error } = await supabase.functions.invoke('fetch-payments', {
              body: { franquiaNome: franquia.nome }
            });
            
            if (error) {
              console.error(`Error refreshing ${franquia.nome}:`, error);
              toast.error(`Erro ao processar ${franquia.nome}`);
            } else {
              const processed = data?.stats?.paymentsProcessed || 0;
              totalProcessed += processed;
              
              // Reload data and update UI after each franchise
              await loadPaymentsFromDatabase();
              toast.success(`${franquia.nome}: ${processed} cobranças processadas`);
            }
          } catch (err) {
            console.error(`Error refreshing ${franquia.nome}:`, err);
            toast.error(`Erro ao processar ${franquia.nome}`);
          } finally {
            // Mark this specific franchise as done loading
            setLoadingFranquias(prev => ({ ...prev, [franquia.id]: false }));
          }
        }
        
        toast.success(`Atualização completa! Total: ${totalProcessed} cobranças.`);
      } else {
        // For franquia or specific franchise refresh
        const { data, error } = await supabase.functions.invoke('fetch-payments', {
          body: franquiaNome ? { franquiaNome } : {}
        });

        if (error) throw error;
        await loadPaymentsFromDatabase();
        toast.success(`Dados atualizados! ${data?.stats?.paymentsProcessed || 0} cobranças processadas.`);
      }
    } catch (error) {
      console.error('Error refreshing data:', error);
      const errorMessage = error instanceof Error ? error.message : 'Unknown error';
      toast.error("Erro ao atualizar dados: " + errorMessage);
    } finally {
      setLoading(false);
    }
  };

  const calculateKPIs = (paymentsToCalc: PaymentWithCustomer[]) => {
    const overduePayments = paymentsToCalc.filter(p => p.status === "OVERDUE");
    const totalOverdue = overduePayments.reduce((sum, p) => sum + p.value, 0);
    const paidPayments = paymentsToCalc.filter(p => p.status === "RECEIVED" || p.status === "CONFIRMED");
    const pendingPayments = paymentsToCalc.filter(p => p.status === "PENDING");

    // Calcular clientes únicos
    const uniqueCustomerIds = new Set(paymentsToCalc.map(p => p.customer).filter(Boolean));

    return {
      overdueCount: overduePayments.length,
      totalOverdue,
      paidCount: paidPayments.length,
      pendingCount: pendingPayments.length,
      uniqueCustomers: uniqueCustomerIds.size
    };
  };

  // Mapa de franquia_id -> nome_franquia para busca
  const franquiaIdToName = useMemo(() => {
    const map = new Map<string, string>();
    franquiasData.forEach(f => map.set(f.id, f.nome));
    mastersData.forEach(m => m.franquias.forEach(f => map.set(f.id, f.nome)));
    return map;
  }, [franquiasData, mastersData]);

  // Função para filtrar pagamentos
  const filterPaymentsArray = (paymentsToFilter: PaymentWithCustomer[], franquiaNome?: string) => {
    return paymentsToFilter.filter(p => {
      const matchesCustomer = !searchTerm ||
        p.customerData?.name?.toLowerCase().includes(searchTerm.toLowerCase()) ||
        p.customerData?.cpfCnpj?.includes(searchTerm);

      // Se passou o nome da franquia diretamente, usa ela, senão tenta pelo ID do payment
      const paymentFranquiaName = franquiaNome || franquiaIdToName.get((p as any).franquia_id || '');
      const matchesFranquia = !searchTerm ||
        paymentFranquiaName?.toLowerCase().includes(searchTerm.toLowerCase());

      const matchesSearch = matchesCustomer || matchesFranquia;

      // Comparar apenas as datas, ignorando timezone
      const dueDateStr = p.dueDate; // formato "YYYY-MM-DD"
      const matchesStartDate = !startDate || dueDateStr >= startDate;
      const matchesEndDate = !endDate || dueDateStr <= endDate;

      return matchesSearch && matchesStartDate && matchesEndDate;
    });
  };

  // Filtrar pagamentos globais
  const filteredPayments = useMemo(() => {
    return filterPaymentsArray(payments);
  }, [payments, searchTerm, startDate, endDate]);

  const { overdueCount, totalOverdue, paidCount, pendingCount, uniqueCustomers } = calculateKPIs(filteredPayments);

  const buildKPIs = (kpiData: ReturnType<typeof calculateKPIs>) => [
    {
      title: "Cobranças Vencidas",
      value: kpiData.overdueCount.toString(),
      change: "",
      trend: "up" as const,
      icon: AlertCircle,
      color: "text-destructive",
      bgColor: "bg-destructive/10",
    },
    {
      title: "Clientes Únicos",
      value: kpiData.uniqueCustomers.toString(),
      change: "",
      trend: "down" as const,
      icon: Users,
      color: "text-primary",
      bgColor: "bg-primary/10",
    },
    {
      title: "Total em Atraso",
      value: kpiData.totalOverdue.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' }),
      change: "",
      trend: "up" as const,
      icon: DollarSign,
      color: "text-foreground",
      bgColor: "bg-muted",
    },
  ];

  const kpis = buildKPIs({ overdueCount, totalOverdue, paidCount, pendingCount, uniqueCustomers });

  // Dados para o gráfico de barras (valores vencidos por cliente)
  const chartData = useMemo(() => {
    const overduePayments = filteredPayments.filter(p => p.status === 'OVERDUE');
    const groupedData: Record<string, number> = {};

    overduePayments.forEach(p => {
      const key = p.customerData?.name || 'Desconhecido';
      groupedData[key] = (groupedData[key] || 0) + p.value;
    });

    return Object.entries(groupedData)
      .map(([name, value]) => ({ name: name.substring(0, 20), value }))
      .sort((a, b) => b.value - a.value);
  }, [filteredPayments]);

  // Dados para o gráfico de quantidade de boletos vencidos por cliente
  const chartDataCount = useMemo(() => {
    const overduePayments = filteredPayments.filter(p => p.status === 'OVERDUE');
    const groupedData: Record<string, number> = {};

    overduePayments.forEach(p => {
      const key = p.customerData?.name || 'Desconhecido';
      groupedData[key] = (groupedData[key] || 0) + 1;
    });

    return Object.entries(groupedData)
      .map(([name, count]) => ({ name: name.substring(0, 20), count }))
      .sort((a, b) => b.count - a.count);
  }, [filteredPayments]);

  // Dados para o gráfico de cobranças vencidas por franquia (para master_regional)
  const franquiaChartData = useMemo(() => {
    if (userRole !== 'master_regional' || franquiasData.length === 0) return [];

    return franquiasData.map(franquia => {
      // Verificar se o nome da franquia corresponde ao termo de busca
      const franquiaMatchesSearch = searchTerm &&
        franquia.nome.toLowerCase().includes(searchTerm.toLowerCase());

      // Aplicar os mesmos filtros de busca e data
      const filteredFranquiaPayments = franquia.payments.filter(p => {
        const matchesCustomer = !searchTerm ||
          p.customerData?.name?.toLowerCase().includes(searchTerm.toLowerCase()) ||
          p.customerData?.cpfCnpj?.includes(searchTerm);

        // Se a franquia corresponde ao termo de busca, inclui todos os clientes dela
        const matchesSearch = matchesCustomer || franquiaMatchesSearch;

        const dueDateStr = p.dueDate;
        const matchesStartDate = !startDate || dueDateStr >= startDate;
        const matchesEndDate = !endDate || dueDateStr <= endDate;

        return matchesSearch && matchesStartDate && matchesEndDate;
      });

      const overduePayments = filteredFranquiaPayments.filter(p => p.status === 'OVERDUE');
      const totalOverdue = overduePayments.reduce((sum, p) => sum + p.value, 0);
      const overdueCount = overduePayments.length;
      return {
        name: franquia.nome.substring(0, 25),
        value: totalOverdue,
        count: overdueCount
      };
    }).filter(f => f.value > 0 || f.count > 0) // Remover franquias sem resultados após filtro
      .sort((a, b) => b.value - a.value);
  }, [userRole, franquiasData, searchTerm, startDate, endDate]);

  // Gradiente de azuis do escuro ao claro
  const getBarColor = (index: number) => {
    const colors = [
      '#1e3a5f', // Azul muito escuro
      '#234b6e', // Azul escuro
      '#2d5a7b', // Azul médio-escuro
      '#3d6d8f', // Azul médio
      '#4a7fa3', // Azul
      '#5a91b5', // Azul médio-claro
      '#6ba3c7', // Azul claro
      '#7db5d9', // Azul mais claro
      '#90c7eb', // Azul muito claro
      '#a3d9fd', // Azul claríssimo
    ];
    return colors[Math.min(index, colors.length - 1)];
  };

  const formatCurrency = (value: number) => {
    return value.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
  };

  const formatDate = (dateString: string) => {
    const [year, month, day] = dateString.split("-");
    return `${day}/${month}/${year}`;
  };

  const formatCpfCnpj = (value: string) => {
    if (value.length === 11) {
      return value.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/, "$1.$2.$3-$4");
    }
    return value.replace(/(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/, "$1.$2.$3/$4-$5");
  };

  const getStatusLabel = (status: string) => {
    switch (status) {
      case "OVERDUE":
        return "Vencido";
      case "PENDING":
        return "Pendente";
      case "RECEIVED":
      case "CONFIRMED":
        return "Pago";
      default:
        return status;
    }
  };

  const getStatusColor = (status: string) => {
    switch (status) {
      case "OVERDUE":
        return "bg-destructive/10 text-destructive";
      case "PENDING":
        return "bg-warning/10 text-warning";
      case "RECEIVED":
      case "CONFIRMED":
        return "bg-success/10 text-success";
      default:
        return "bg-muted/10 text-muted-foreground";
    }
  };

  const openWhatsApp = (payment: PaymentWithCustomer) => {
    const customerName = payment.customerData?.name || 'Cliente';
    const boletoLink = payment.bankSlipUrl || payment.invoiceUrl || '';

    // Pegar o telefone e limpar caracteres não numéricos
    let phone = payment.customerData?.mobilePhone || '';
    phone = phone.replace(/\D/g, '');

    // Adicionar 55 na frente se não tiver
    if (phone && !phone.startsWith('55')) {
      phone = '55' + phone;
    }

    if (!phone) {
      toast.error("Telefone do cliente não encontrado");
      return;
    }

    // Montar a mensagem
    const message = `Olá ${customerName}, segue seu boleto para pagamento: ${boletoLink}`;
    const encodedMessage = encodeURIComponent(message);

    // Abrir WhatsApp Web
    const whatsappUrl = `https://wa.me/${phone}?text=${encodedMessage}`;
    window.open(whatsappUrl, '_blank');
  };

  const renderPaymentsTable = (paymentsToRender: PaymentWithCustomer[]) => {
    // Calcular quantidade de cobranças por cliente
    const customerPaymentCounts: Record<string, number> = {};
    paymentsToRender.forEach(p => {
      const customerId = p.customer || 'unknown';
      customerPaymentCounts[customerId] = (customerPaymentCounts[customerId] || 0) + 1;
    });

    return (
    <table className="w-full">
      <thead>
        <tr className="border-b">
          <th className="text-left py-3 px-4 text-sm font-medium text-muted-foreground">Cliente</th>
          <th className="text-left py-3 px-4 text-sm font-medium text-muted-foreground">CPF/CNPJ</th>
          <th className="text-center py-3 px-4 text-sm font-medium text-muted-foreground">Qtd</th>
          <th className="text-left py-3 px-4 text-sm font-medium text-muted-foreground">Valor</th>
          <th className="text-left py-3 px-4 text-sm font-medium text-muted-foreground">Vencimento</th>
          <th className="text-left py-3 px-4 text-sm font-medium text-muted-foreground">Status</th>
          <th className="text-left py-3 px-4 text-sm font-medium text-muted-foreground">Cobrança</th>
          <th className="text-left py-3 px-4 text-sm font-medium text-muted-foreground">Ações</th>
        </tr>
      </thead>
      <tbody>
        {paymentsToRender.length === 0 ? (
          <tr>
            <td colSpan={8} className="py-8 text-center text-muted-foreground">
              Clique em "Atualizar" para carregar as cobranças
            </td>
          </tr>
        ) : (
          paymentsToRender.map((payment) => (
            <tr key={payment.id} className="border-b last:border-0 hover:bg-muted/50 transition-colors">
              <td className="py-3 px-4 text-sm text-foreground">
                {payment.customerData?.name || "Cliente não encontrado"}
              </td>
              <td className="py-3 px-4 text-sm text-muted-foreground">
                {payment.customerData ? formatCpfCnpj(payment.customerData.cpfCnpj) : "-"}
              </td>
              <td className="py-3 px-4 text-sm text-center font-medium">
                <span className="inline-flex items-center justify-center w-6 h-6 rounded-full bg-primary/10 text-primary text-xs">
                  {customerPaymentCounts[payment.customer || 'unknown'] || 1}
                </span>
              </td>
              <td className="py-3 px-4 text-sm font-medium text-foreground">
                {formatCurrency(payment.value)}
              </td>
              <td className="py-3 px-4 text-sm text-muted-foreground">
                {formatDate(payment.dueDate)}
              </td>
              <td className="py-3 px-4">
                <span
                  className={`inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium ${getStatusColor(payment.status)}`}
                >
                  {getStatusLabel(payment.status)}
                </span>
              </td>
              <td className="py-3 px-4">
                {payment.bankSlipUrl || payment.invoiceUrl ? (
                  <a
                    href={payment.bankSlipUrl || payment.invoiceUrl}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="inline-flex items-center gap-1 text-primary hover:text-primary/80 text-sm"
                  >
                    <ExternalLink className="h-4 w-4" />
                    Ver
                  </a>
                ) : (
                  <span className="text-muted-foreground text-sm">-</span>
                )}
              </td>
              <td className="py-3 px-4">
                <Button
                  variant="ghost"
                  size="sm"
                  onClick={() => openWhatsApp(payment)}
                  className="text-green-600 hover:text-green-700 hover:bg-green-50"
                >
                  <MessageCircle className="h-4 w-4" />
                </Button>
              </td>
            </tr>
          ))
        )}
      </tbody>
    </table>
  );
  };

  return (
    <DashboardLayout>
      <div className="space-y-8">
        {/* Page Title */}
        <div className="mb-8 flex items-center justify-between">
          <div>
            <h1 className="text-3xl font-bold text-foreground mb-2">
              {userRole === 'franquia' && franquiaName ? `Cobranças Vencidas - ${franquiaName}` : 'Cobranças Vencidas'}
            </h1>
            <p className="text-muted-foreground">
              {userRole === 'super_admin' && 'Visão geral de todas as franquias'}
              {userRole === 'master_regional' && 'Visão geral das suas franquias'}
              {userRole === 'franquia' && !franquiaInativa && 'Visão geral das cobranças da sua franquia'}
            </p>
          </div>
          {!franquiaInativa && (
            <Button
              onClick={() => handleRefresh()}
              disabled={loading}
              className="gap-2"
            >
              <RefreshCw className={`h-4 w-4 ${loading ? "animate-spin" : ""}`} />
              Atualizar
            </Button>
          )}
        </div>

        {/* Mensagem para Franquia Inativa */}
        {franquiaInativa && (
          <Card className="p-8 mb-8 border-2 border-amber-500 bg-amber-50">
            <div className="text-center space-y-4">
              <div className="mx-auto w-16 h-16 rounded-full bg-amber-500/20 flex items-center justify-center">
                <AlertCircle className="h-8 w-8 text-amber-600" />
              </div>
              <h2 className="text-2xl font-bold text-amber-800">
                Unidade Inativa
              </h2>
              <p className="text-amber-700 text-lg">
                Ativação Pendente
              </p>
            </div>
          </Card>
        )}

        {/* Conteúdo do Dashboard (oculto quando franquia inativa) */}
        {!franquiaInativa && (
          <>
        {/* KPI Cards */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
          {kpis.map((kpi) => (
            <Card key={kpi.title} className="p-6 hover:shadow-lg transition-all duration-300 hover:-translate-y-1 cursor-default">
              <div className="flex items-start justify-between">
                <div className="space-y-2">
                  <p className="text-sm text-muted-foreground">{kpi.title}</p>
                  <p className="text-3xl font-bold text-foreground">{kpi.value}</p>
                  {kpi.change && (
                    <div className="flex items-center gap-1">
                      {kpi.trend === "up" ? (
                        <TrendingUp className="h-4 w-4 text-destructive" />
                      ) : (
                        <TrendingDown className="h-4 w-4 text-success" />
                      )}
                      <span className={`text-sm ${kpi.trend === "up" ? "text-destructive" : "text-success"}`}>
                        {kpi.change}
                      </span>
                    </div>
                  )}
                </div>
                <div className={`h-12 w-12 rounded-lg ${kpi.bgColor} flex items-center justify-center`}>
                  <kpi.icon className={`h-6 w-6 ${kpi.color}`} />
                </div>
              </div>
            </Card>
          ))}
        </div>

        {/* Filtros */}
        <Card className="p-4 mb-6">
          <div className="flex flex-wrap gap-4 items-end">
            <div className="flex-1 min-w-[200px]">
              <Label htmlFor="search" className="text-sm text-muted-foreground mb-1 block">
                <Search className="h-4 w-4 inline mr-1" />
                Buscar cliente ou franquia
              </Label>
              <Input
                id="search"
                placeholder="Nome, CPF/CNPJ ou franquia..."
                value={searchTerm}
                onChange={(e) => setSearchTerm(e.target.value)}
              />
            </div>
            <div className="min-w-[150px]">
              <Label htmlFor="startDate" className="text-sm text-muted-foreground mb-1 block">
                <Filter className="h-4 w-4 inline mr-1" />
                Data inicial
              </Label>
              <Input
                id="startDate"
                type="date"
                value={startDate}
                onChange={(e) => setStartDate(e.target.value)}
              />
            </div>
            <div className="min-w-[150px]">
              <Label htmlFor="endDate" className="text-sm text-muted-foreground mb-1 block">
                Data final
              </Label>
              <Input
                id="endDate"
                type="date"
                value={endDate}
                onChange={(e) => setEndDate(e.target.value)}
              />
            </div>
            {(searchTerm || startDate || endDate) && (
              <Button
                variant="outline"
                size="sm"
                onClick={() => {
                  setSearchTerm("");
                  setStartDate("");
                  setEndDate("");
                }}
              >
                Limpar filtros
              </Button>
            )}
          </div>
        </Card>

        {/* Chart Section - Grid com 2 gráficos lado a lado */}
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-8">
          <Card className="p-6">
            <h3 className="text-lg font-semibold text-foreground mb-4">Valores Vencidos por Cliente</h3>
            {chartData.length > 0 ? (
              <div className="h-80 overflow-y-auto">
                <div style={{ height: Math.max(320, chartData.length * 40) }}>
                  <ResponsiveContainer width="100%" height="100%">
                    <BarChart data={chartData} layout="vertical" margin={{ top: 5, right: 100, left: 20, bottom: 5 }}>
                      <XAxis type="number" tickFormatter={(value) => `R$ ${value.toLocaleString('pt-BR')}`} />
                      <YAxis type="category" dataKey="name" width={120} tick={{ fontSize: 11 }} />
                      <Tooltip
                        formatter={(value: number) => [value.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' }), 'Valor']}
                        labelStyle={{ fontWeight: 'bold' }}
                      />
                      <Bar dataKey="value" radius={[0, 4, 4, 0]}>
                        {chartData.map((entry, index) => (
                          <Cell key={`cell-${index}`} fill={getBarColor(index)} />
                        ))}
                        <LabelList
                          dataKey="value"
                          position="right"
                          formatter={(value: number) => value.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' })}
                          style={{ fontSize: 10, fill: '#666' }}
                        />
                      </Bar>
                    </BarChart>
                  </ResponsiveContainer>
                </div>
              </div>
            ) : (
              <div className="h-64 flex items-center justify-center text-muted-foreground">
                Nenhuma cobrança vencida encontrada
              </div>
            )}
          </Card>

          <Card className="p-6">
            <h3 className="text-lg font-semibold text-foreground mb-4">Qtd. Boletos Vencidos por Cliente</h3>
            {chartDataCount.length > 0 ? (
              <div className="h-80 overflow-y-auto">
                <div style={{ height: Math.max(320, chartDataCount.length * 40) }}>
                  <ResponsiveContainer width="100%" height="100%">
                    <BarChart data={chartDataCount} layout="vertical" margin={{ top: 5, right: 50, left: 20, bottom: 5 }}>
                      <XAxis type="number" />
                      <YAxis type="category" dataKey="name" width={120} tick={{ fontSize: 11 }} />
                      <Tooltip
                        formatter={(value: number) => [value, 'Boletos']}
                        labelStyle={{ fontWeight: 'bold' }}
                      />
                      <Bar dataKey="count" radius={[0, 4, 4, 0]}>
                        {chartDataCount.map((entry, index) => (
                          <Cell key={`cell-count-${index}`} fill={getBarColor(index)} />
                        ))}
                        <LabelList
                          dataKey="count"
                          position="right"
                          style={{ fontSize: 10, fill: '#666' }}
                        />
                      </Bar>
                    </BarChart>
                  </ResponsiveContainer>
                </div>
              </div>
            ) : (
              <div className="h-64 flex items-center justify-center text-muted-foreground">
                Nenhuma cobrança vencida encontrada
              </div>
            )}
          </Card>
        </div>

        {/* Gráficos de Cobranças Vencidas por Franquia (apenas para master_regional) */}
        {userRole === 'master_regional' && franquiaChartData.length > 0 && (
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-8">
            <Card className="p-6">
              <h3 className="text-lg font-semibold text-foreground mb-4">Valores Vencidos por Franquia</h3>
              <div className="h-80 overflow-y-auto">
                <div style={{ height: Math.max(320, franquiaChartData.length * 40) }}>
                  <ResponsiveContainer width="100%" height="100%">
                    <BarChart data={franquiaChartData} layout="vertical" margin={{ top: 5, right: 100, left: 20, bottom: 5 }}>
                      <XAxis type="number" tickFormatter={(value) => `R$ ${value.toLocaleString('pt-BR')}`} />
                      <YAxis type="category" dataKey="name" width={150} tick={{ fontSize: 11 }} />
                      <Tooltip
                        formatter={(value: number) => [value.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' }), 'Valor']}
                        labelStyle={{ fontWeight: 'bold' }}
                      />
                      <Bar dataKey="value" radius={[0, 4, 4, 0]}>
                        {franquiaChartData.map((entry, index) => (
                          <Cell key={`cell-franquia-${index}`} fill={getBarColor(index)} />
                        ))}
                        <LabelList
                          dataKey="value"
                          position="right"
                          formatter={(value: number) => value.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' })}
                          style={{ fontSize: 10, fill: '#666' }}
                        />
                      </Bar>
                    </BarChart>
                  </ResponsiveContainer>
                </div>
              </div>
            </Card>

            <Card className="p-6">
              <h3 className="text-lg font-semibold text-foreground mb-4">Qtd. Boletos Vencidos por Franquia</h3>
              <div className="h-80 overflow-y-auto">
                <div style={{ height: Math.max(320, franquiaChartData.length * 40) }}>
                  <ResponsiveContainer width="100%" height="100%">
                    <BarChart data={franquiaChartData} layout="vertical" margin={{ top: 5, right: 50, left: 20, bottom: 5 }}>
                      <XAxis type="number" />
                      <YAxis type="category" dataKey="name" width={150} tick={{ fontSize: 11 }} />
                      <Tooltip
                        formatter={(value: number) => [value, 'Boletos']}
                        labelStyle={{ fontWeight: 'bold' }}
                      />
                      <Bar dataKey="count" radius={[0, 4, 4, 0]}>
                        {franquiaChartData.map((entry, index) => (
                          <Cell key={`cell-franquia-count-${index}`} fill={getBarColor(index)} />
                        ))}
                        <LabelList
                          dataKey="count"
                          position="right"
                          style={{ fontSize: 10, fill: '#666' }}
                        />
                      </Bar>
                    </BarChart>
                  </ResponsiveContainer>
                </div>
              </div>
            </Card>
          </div>
        )}

        {/* Hierarchical Data Display */}
        {userRole === 'super_admin' && mastersData.length > 0 ? (
          <div className="space-y-6">
            {mastersData.map(master => (
              <Card key={master.id} className="p-6">
                <h3 className="text-xl font-semibold text-foreground mb-4">{master.nome}</h3>
                <div className="space-y-4">
                  {master.franquias.map(franquia => {
                    const franquiaKPIs = calculateKPIs(franquia.payments);
                    return (
                      <Collapsible 
                        key={franquia.id}
                        open={openSections[franquia.id]}
                        onOpenChange={(open) => setOpenSections(prev => ({ ...prev, [franquia.id]: open }))}
                      >
                        <Card className="border-2">
                          <CollapsibleTrigger className="w-full p-4 flex items-center justify-between hover:bg-muted/50 transition-colors">
                            <div className="flex items-center gap-4">
                              <h4 className="text-lg font-semibold text-foreground">{franquia.nome}</h4>
                              <div className="flex gap-4 text-sm">
                                <span className="text-destructive">Vencidas: {franquiaKPIs.overdueCount}</span>
                                <span className="text-warning">Pendentes: {franquiaKPIs.pendingCount}</span>
                                <span className="text-success">Pagas: {franquiaKPIs.paidCount}</span>
                              </div>
                            </div>
                            {openSections[franquia.id] ? <ChevronUp /> : <ChevronDown />}
                          </CollapsibleTrigger>
                          <CollapsibleContent>
                            <div className="p-4 pt-0">
                              <div className="overflow-x-auto">
                                {renderPaymentsTable(filterPaymentsArray(franquia.payments, franquia.nome))}
                              </div>
                            </div>
                          </CollapsibleContent>
                        </Card>
                      </Collapsible>
                    );
                  })}
                </div>
              </Card>
            ))}
          </div>
        ) : userRole === 'master_regional' && franquiasData.length > 0 ? (
          <div className="space-y-4">
            {franquiasData.map(franquia => {
              const franquiaKPIs = calculateKPIs(franquia.payments);
              return (
                <Collapsible 
                  key={franquia.id}
                  open={openSections[franquia.id]}
                  onOpenChange={(open) => setOpenSections(prev => ({ ...prev, [franquia.id]: open }))}
                >
                  <Card className={`border-2 ${loadingFranquias[franquia.id] ? 'border-primary/50 bg-primary/5' : ''}`}>
                    <div className="w-full p-4 flex items-center justify-between">
                      <CollapsibleTrigger className="flex items-center gap-4 hover:bg-muted/50 transition-colors flex-1">
                        <h4 className="text-lg font-semibold text-foreground">{franquia.nome}</h4>
                        <div className="flex gap-4 text-sm">
                          <span className="text-destructive">Vencidas: {franquiaKPIs.overdueCount}</span>
                        </div>
                        {openSections[franquia.id] ? <ChevronUp /> : <ChevronDown />}
                      </CollapsibleTrigger>
                      <Button
                        variant="outline"
                        size="sm"
                        onClick={(e) => {
                          e.stopPropagation();
                          handleRefresh(franquia.nome);
                        }}
                        disabled={loading || loadingFranquias[franquia.id]}
                        className="ml-4"
                      >
                        <RefreshCw className={`h-4 w-4 ${(loading || loadingFranquias[franquia.id]) ? "animate-spin" : ""}`} />
                      </Button>
                    </div>
                    <CollapsibleContent>
                      <div className="p-4 pt-0">
                        <div className="overflow-x-auto">
                          {renderPaymentsTable(filterPaymentsArray(franquia.payments, franquia.nome))}
                        </div>
                      </div>
                    </CollapsibleContent>
                  </Card>
                </Collapsible>
              );
            })}
          </div>
        ) : (
          <Card className="p-6">
            <div className="flex items-center justify-between mb-6">
              <h3 className="text-lg font-semibold text-foreground">Cobranças Recentes</h3>
              <Button variant="outline" size="sm">Ver todas</Button>
            </div>
            <div className="overflow-x-auto">
              {renderPaymentsTable(filteredPayments)}
            </div>
          </Card>
        )}
          </>
        )}
      </div>
    </DashboardLayout>
  );
};

export default Dashboard;
