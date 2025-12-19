import { useState, useEffect, useMemo } from "react";
import { useNavigate } from "react-router-dom";
import { supabase } from "@/integrations/supabase/client";
import { DashboardLayout } from "@/components/DashboardLayout";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import { Badge } from "@/components/ui/badge";
import { RefreshCw, Loader2, ExternalLink, DollarSign, Users, AlertCircle, CheckCircle, Search, Filter } from "lucide-react";
import { toast } from "@/hooks/use-toast";
import { format } from "date-fns";
import { ptBR } from "date-fns/locale";
import { BarChart, Bar, XAxis, YAxis, Tooltip, ResponsiveContainer, Cell, LabelList } from 'recharts';

interface Franquia {
  id: string;
  nome: string;
  webhook: string | null;
}

interface PaymentPixData {
  id: string;
  customer_id: string;
  customer_name: string | null;
  description: string | null;
  status: string;
  value: number;
  net_value: number | null;
  date_created: string;
  payment_date: string | null;
  due_date: string | null;
  transaction_receipt_url: string | null;
  franquia_id: string | null;
}

const PaymentPix = () => {
  const navigate = useNavigate();
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [userRole, setUserRole] = useState<string | null>(null);
  const [franquias, setFranquias] = useState<Franquia[]>([]);
  const [payments, setPayments] = useState<PaymentPixData[]>([]);
  const [selectedFranquiaId, setSelectedFranquiaId] = useState<string | null>(null);
  const [searchTerm, setSearchTerm] = useState("");
  const [startDate, setStartDate] = useState("");
  const [endDate, setEndDate] = useState("");

  useEffect(() => {
    checkAuth();
  }, []);

  const checkAuth = async () => {
    const { data: { session } } = await supabase.auth.getSession();
    if (!session) {
      navigate("/auth");
      return;
    }

    const { data: roleData } = await supabase
      .from("user_roles")
      .select("role")
      .eq("user_id", session.user.id)
      .single();

    if (roleData) {
      setUserRole(roleData.role);
    }

    await loadFranquias(session.user.id, roleData?.role);
    await loadPayments();
    setLoading(false);
  };

  const loadFranquias = async (userId: string, role: string | undefined) => {
    if (role === "super_admin") {
      const { data } = await supabase
        .from("franquias")
        .select("id, nome, webhook")
        .eq("ativo", true);
      setFranquias(data || []);
    } else if (role === "master_regional") {
      const { data: userEmail } = await supabase.auth.getUser();
      const { data: master } = await supabase
        .from("master_regionais")
        .select("id")
        .eq("email", userEmail.user?.email)
        .maybeSingle();

      if (master) {
        const { data } = await supabase
          .from("franquias")
          .select("id, nome, webhook")
          .eq("master_regional_id", master.id)
          .eq("ativo", true);
        setFranquias(data || []);
      }
    } else if (role === "franquia") {
      const { data: userEmail } = await supabase.auth.getUser();
      const { data } = await supabase
        .from("franquias")
        .select("id, nome, webhook")
        .eq("email", userEmail.user?.email)
        .eq("ativo", true);
      setFranquias(data || []);
      if (data && data.length > 0) {
        setSelectedFranquiaId(data[0].id);
      }
    }
  };

  const loadPayments = async () => {
    const { data, error } = await supabase
      .from("payment_pix")
      .select("*")
      .order("date_created", { ascending: false });

    if (error) {
      console.error("Error loading payments:", error);
      return;
    }

    setPayments(data || []);
  };

  const handleRefresh = async (franquia: Franquia) => {
    if (!franquia.webhook) {
      toast({
        title: "Erro",
        description: `Franquia ${franquia.nome} não possui webhook configurado.`,
        variant: "destructive",
      });
      return;
    }

    setRefreshing(true);
    setSelectedFranquiaId(franquia.id);
    toast({
      title: "Processando...",
      description: `Buscando dados PIX de ${franquia.nome}`,
    });

    try {
      const response = await fetch(franquia.webhook, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ atualiza: "pix" }),
      });

      const data = await response.json();
      console.log("Webhook PIX response:", data);

      const paymentsArray = Array.isArray(data) ? data : (data?.data || []);

      const pixPaymentsRaw = paymentsArray.filter((item: any) =>
        item.billingType === 'PIX' || item.billing_type === 'PIX'
      );

      if (pixPaymentsRaw.length > 0) {
        const pixPayments = pixPaymentsRaw.map((item: any) => ({
          id: item.id,
          customer_id: item.customer || item.customer_id,
          customer_name: item.name || item.customerName || item.customer_name || null,
          description: item.description || null,
          status: item.status,
          value: parseFloat(item.value) || 0,
          net_value: item.netValue ? parseFloat(item.netValue) : null,
          date_created: item.dateCreated || item.date_created,
          payment_date: item.paymentDate || item.payment_date || null,
          due_date: item.dueDate || item.due_date || null,
          transaction_receipt_url: item.transactionReceiptUrl || item.transaction_receipt_url || null,
          invoice_url: item.invoiceUrl || item.invoice_url || null,
          franquia_id: franquia.id,
          billing_type: 'PIX',
        }));

        for (const payment of pixPayments) {
          const { error } = await supabase
            .from("payment_pix")
            .upsert(payment, { onConflict: "id" });

          if (error) {
            console.error("Error upserting payment:", error);
          }
        }

        await loadPayments();

        toast({
          title: "Sucesso",
          description: `${pixPayments.length} pagamentos PIX atualizados para ${franquia.nome}`,
        });
      } else {
        toast({
          title: "Aviso",
          description: "Nenhum pagamento PIX encontrado no webhook.",
        });
      }
    } catch (error) {
      console.error("Webhook error:", error);
      toast({
        title: "Erro",
        description: "Falha ao chamar o webhook.",
        variant: "destructive",
      });
    } finally {
      setRefreshing(false);
    }
  };

  // Filtrar pagamentos
  const filteredPayments = useMemo(() => {
    return payments.filter(p => {
      const matchesSearch = !searchTerm ||
        p.customer_name?.toLowerCase().includes(searchTerm.toLowerCase()) ||
        p.customer_id?.includes(searchTerm) ||
        p.description?.toLowerCase().includes(searchTerm.toLowerCase());

      const dateCreated = p.date_created?.split('T')[0] || '';
      const matchesStartDate = !startDate || dateCreated >= startDate;
      const matchesEndDate = !endDate || dateCreated <= endDate;

      return matchesSearch && matchesStartDate && matchesEndDate;
    });
  }, [payments, searchTerm, startDate, endDate]);

  // KPIs
  const kpis = useMemo(() => {
    const received = filteredPayments.filter(p =>
      ['received', 'recebido', 'confirmed', 'confirmado', 'pago'].includes(p.status?.toLowerCase())
    );
    const pending = filteredPayments.filter(p =>
      ['pending', 'pendente'].includes(p.status?.toLowerCase())
    );
    const overdue = filteredPayments.filter(p =>
      ['overdue', 'vencido'].includes(p.status?.toLowerCase())
    );

    const totalReceived = received.reduce((sum, p) => sum + p.value, 0);
    const totalPending = pending.reduce((sum, p) => sum + p.value, 0);
    const uniqueCustomers = new Set(filteredPayments.map(p => p.customer_id)).size;

    return {
      receivedCount: received.length,
      totalReceived,
      pendingCount: pending.length,
      totalPending,
      overdueCount: overdue.length,
      uniqueCustomers,
    };
  }, [filteredPayments]);

  // Dados para gráficos
  const chartDataByClient = useMemo(() => {
    const groupedData: Record<string, number> = {};
    filteredPayments.forEach(p => {
      const key = p.customer_name || p.customer_id || 'Desconhecido';
      groupedData[key] = (groupedData[key] || 0) + p.value;
    });

    return Object.entries(groupedData)
      .map(([name, value]) => ({ name: name.substring(0, 20), value }))
      .sort((a, b) => b.value - a.value)
      .slice(0, 10);
  }, [filteredPayments]);

  const chartDataCountByClient = useMemo(() => {
    const groupedData: Record<string, number> = {};
    filteredPayments.forEach(p => {
      const key = p.customer_name || p.customer_id || 'Desconhecido';
      groupedData[key] = (groupedData[key] || 0) + 1;
    });

    return Object.entries(groupedData)
      .map(([name, count]) => ({ name: name.substring(0, 20), count }))
      .sort((a, b) => b.count - a.count)
      .slice(0, 10);
  }, [filteredPayments]);

  // Dados para gráficos por franquia (master_regional e super_admin)
  const franquiaChartData = useMemo(() => {
    if (userRole !== 'master_regional' && userRole !== 'super_admin') return [];

    const franquiaMap = new Map(franquias.map(f => [f.id, f.nome]));
    const groupedData: Record<string, { value: number; count: number }> = {};

    filteredPayments.forEach(p => {
      const franquiaName = franquiaMap.get(p.franquia_id || '') || 'Sem Franquia';
      if (!groupedData[franquiaName]) {
        groupedData[franquiaName] = { value: 0, count: 0 };
      }
      groupedData[franquiaName].value += p.value;
      groupedData[franquiaName].count += 1;
    });

    return Object.entries(groupedData)
      .map(([name, data]) => ({ name: name.substring(0, 25), value: data.value, count: data.count }))
      .sort((a, b) => b.value - a.value);
  }, [filteredPayments, franquias, userRole]);

  const getBarColor = (index: number) => {
    const colors = [
      '#1e3a5f', '#234b6e', '#2d5a7b', '#3d6d8f', '#4a7fa3',
      '#5a91b5', '#6ba3c7', '#7db5d9', '#90c7eb', '#a3d9fd',
    ];
    return colors[Math.min(index, colors.length - 1)];
  };

  const getStatusBadge = (status: string) => {
    const normalizedStatus = status?.toLowerCase();
    if (["received", "recebido", "confirmed", "confirmado", "pago"].includes(normalizedStatus)) {
      return <Badge className="bg-green-500 text-white">Recebido</Badge>;
    }
    if (["pending", "pendente"].includes(normalizedStatus)) {
      return <Badge className="bg-yellow-500 text-white">Pendente</Badge>;
    }
    if (["overdue", "vencido"].includes(normalizedStatus)) {
      return <Badge className="bg-red-500 text-white">Vencido</Badge>;
    }
    return <Badge variant="secondary">{status}</Badge>;
  };

  const formatCurrency = (value: number) => {
    return new Intl.NumberFormat("pt-BR", {
      style: "currency",
      currency: "BRL",
    }).format(value);
  };

  const formatDate = (dateString: string | null) => {
    if (!dateString) return "-";
    try {
      return format(new Date(dateString), "dd/MM/yyyy", { locale: ptBR });
    } catch {
      return dateString;
    }
  };

  const getPaymentsForFranquia = (franquiaId: string) => {
    return filteredPayments.filter((p) => p.franquia_id === franquiaId);
  };

  if (loading) {
    return (
      <DashboardLayout>
        <div className="flex items-center justify-center h-full">
          <Loader2 className="h-8 w-8 animate-spin text-primary" />
        </div>
      </DashboardLayout>
    );
  }

  return (
    <DashboardLayout>
      <div className="space-y-6">
        {/* Header */}
        <div className="flex items-center justify-between">
          <div>
            <h1 className="text-3xl font-bold text-foreground mb-2">Pagamentos PIX</h1>
            <p className="text-muted-foreground">
              Visão geral dos pagamentos via PIX
            </p>
          </div>
        </div>

        {/* KPI Cards */}
        <div className="grid grid-cols-1 md:grid-cols-4 gap-6">
          <Card className="p-6 hover:shadow-lg transition-all duration-300 hover:-translate-y-1">
            <div className="flex items-start justify-between">
              <div className="space-y-2">
                <p className="text-sm text-muted-foreground">PIX Recebidos</p>
                <p className="text-3xl font-bold text-foreground">{kpis.receivedCount}</p>
                <p className="text-sm text-green-600">{formatCurrency(kpis.totalReceived)}</p>
              </div>
              <div className="h-12 w-12 rounded-lg bg-green-500/10 flex items-center justify-center">
                <CheckCircle className="h-6 w-6 text-green-500" />
              </div>
            </div>
          </Card>

          <Card className="p-6 hover:shadow-lg transition-all duration-300 hover:-translate-y-1">
            <div className="flex items-start justify-between">
              <div className="space-y-2">
                <p className="text-sm text-muted-foreground">PIX Pendentes</p>
                <p className="text-3xl font-bold text-foreground">{kpis.pendingCount}</p>
                <p className="text-sm text-yellow-600">{formatCurrency(kpis.totalPending)}</p>
              </div>
              <div className="h-12 w-12 rounded-lg bg-yellow-500/10 flex items-center justify-center">
                <AlertCircle className="h-6 w-6 text-yellow-500" />
              </div>
            </div>
          </Card>

          <Card className="p-6 hover:shadow-lg transition-all duration-300 hover:-translate-y-1">
            <div className="flex items-start justify-between">
              <div className="space-y-2">
                <p className="text-sm text-muted-foreground">Clientes Únicos</p>
                <p className="text-3xl font-bold text-foreground">{kpis.uniqueCustomers}</p>
              </div>
              <div className="h-12 w-12 rounded-lg bg-primary/10 flex items-center justify-center">
                <Users className="h-6 w-6 text-primary" />
              </div>
            </div>
          </Card>

          <Card className="p-6 hover:shadow-lg transition-all duration-300 hover:-translate-y-1">
            <div className="flex items-start justify-between">
              <div className="space-y-2">
                <p className="text-sm text-muted-foreground">Total Geral</p>
                <p className="text-3xl font-bold text-foreground">{filteredPayments.length}</p>
                <p className="text-sm text-muted-foreground">pagamentos</p>
              </div>
              <div className="h-12 w-12 rounded-lg bg-muted flex items-center justify-center">
                <DollarSign className="h-6 w-6 text-foreground" />
              </div>
            </div>
          </Card>
        </div>

        {/* Filtros */}
        <Card className="p-4">
          <div className="flex flex-wrap gap-4 items-end">
            <div className="flex-1 min-w-[200px]">
              <Label htmlFor="search" className="text-sm text-muted-foreground mb-1 block">
                <Search className="h-4 w-4 inline mr-1" />
                Buscar cliente
              </Label>
              <Input
                id="search"
                placeholder="Nome ou descrição..."
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

        {/* Charts - Por Cliente */}
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
          <Card className="p-6">
            <h3 className="text-lg font-semibold text-foreground mb-4">Valores PIX por Cliente</h3>
            {chartDataByClient.length > 0 ? (
              <div className="h-80 overflow-y-auto">
                <div style={{ height: Math.max(320, chartDataByClient.length * 40) }}>
                  <ResponsiveContainer width="100%" height="100%">
                    <BarChart data={chartDataByClient} layout="vertical" margin={{ top: 5, right: 100, left: 20, bottom: 5 }}>
                      <XAxis type="number" tickFormatter={(value) => `R$ ${value.toLocaleString('pt-BR')}`} />
                      <YAxis type="category" dataKey="name" width={120} tick={{ fontSize: 11 }} />
                      <Tooltip
                        formatter={(value: number) => [value.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' }), 'Valor']}
                        labelStyle={{ fontWeight: 'bold' }}
                      />
                      <Bar dataKey="value" radius={[0, 4, 4, 0]}>
                        {chartDataByClient.map((entry, index) => (
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
                Nenhum pagamento PIX encontrado
              </div>
            )}
          </Card>

          <Card className="p-6">
            <h3 className="text-lg font-semibold text-foreground mb-4">Qtd. PIX por Cliente</h3>
            {chartDataCountByClient.length > 0 ? (
              <div className="h-80 overflow-y-auto">
                <div style={{ height: Math.max(320, chartDataCountByClient.length * 40) }}>
                  <ResponsiveContainer width="100%" height="100%">
                    <BarChart data={chartDataCountByClient} layout="vertical" margin={{ top: 5, right: 50, left: 20, bottom: 5 }}>
                      <XAxis type="number" />
                      <YAxis type="category" dataKey="name" width={120} tick={{ fontSize: 11 }} />
                      <Tooltip
                        formatter={(value: number) => [value, 'PIX']}
                        labelStyle={{ fontWeight: 'bold' }}
                      />
                      <Bar dataKey="count" radius={[0, 4, 4, 0]}>
                        {chartDataCountByClient.map((entry, index) => (
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
                Nenhum pagamento PIX encontrado
              </div>
            )}
          </Card>
        </div>

        {/* Charts - Por Franquia (master_regional e super_admin) */}
        {(userRole === 'master_regional' || userRole === 'super_admin') && franquiaChartData.length > 0 && (
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
            <Card className="p-6">
              <h3 className="text-lg font-semibold text-foreground mb-4">Valores PIX por Franquia</h3>
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
              <h3 className="text-lg font-semibold text-foreground mb-4">Qtd. PIX por Franquia</h3>
              <div className="h-80 overflow-y-auto">
                <div style={{ height: Math.max(320, franquiaChartData.length * 40) }}>
                  <ResponsiveContainer width="100%" height="100%">
                    <BarChart data={franquiaChartData} layout="vertical" margin={{ top: 5, right: 50, left: 20, bottom: 5 }}>
                      <XAxis type="number" />
                      <YAxis type="category" dataKey="name" width={150} tick={{ fontSize: 11 }} />
                      <Tooltip
                        formatter={(value: number) => [value, 'PIX']}
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

        {/* Tables por Franquia */}
        {franquias.map((franquia) => {
          const franquiaPayments = getPaymentsForFranquia(franquia.id);

          return (
            <Card key={franquia.id}>
              <CardHeader className="flex flex-row items-center justify-between pb-2">
                <CardTitle className="text-lg">{franquia.nome}</CardTitle>
                <Button
                  onClick={() => handleRefresh(franquia)}
                  disabled={refreshing && selectedFranquiaId === franquia.id}
                  size="sm"
                >
                  {refreshing && selectedFranquiaId === franquia.id ? (
                    <Loader2 className="h-4 w-4 animate-spin mr-2" />
                  ) : (
                    <RefreshCw className="h-4 w-4 mr-2" />
                  )}
                  Atualizar
                </Button>
              </CardHeader>
              <CardContent>
                {franquiaPayments.length === 0 ? (
                  <p className="text-sm text-muted-foreground">
                    Nenhum pagamento PIX encontrado. Clique em "Atualizar" para buscar dados.
                  </p>
                ) : (
                  <div className="overflow-x-auto">
                    <Table>
                      <TableHeader>
                        <TableRow>
                          <TableHead>Cliente</TableHead>
                          <TableHead>Descrição</TableHead>
                          <TableHead>Valor</TableHead>
                          <TableHead>Status</TableHead>
                          <TableHead>Data Criação</TableHead>
                          <TableHead>Data Pagamento</TableHead>
                          <TableHead>Comprovante</TableHead>
                        </TableRow>
                      </TableHeader>
                      <TableBody>
                        {franquiaPayments.map((payment) => (
                          <TableRow key={payment.id}>
                            <TableCell className="font-medium">
                              {payment.customer_name || payment.customer_id}
                            </TableCell>
                            <TableCell>{payment.description || "-"}</TableCell>
                            <TableCell>{formatCurrency(payment.value)}</TableCell>
                            <TableCell>{getStatusBadge(payment.status)}</TableCell>
                            <TableCell>{formatDate(payment.date_created)}</TableCell>
                            <TableCell>{formatDate(payment.payment_date)}</TableCell>
                            <TableCell>
                              {payment.transaction_receipt_url ? (
                                <Button
                                  variant="ghost"
                                  size="sm"
                                  asChild
                                >
                                  <a
                                    href={payment.transaction_receipt_url}
                                    target="_blank"
                                    rel="noopener noreferrer"
                                  >
                                    <ExternalLink className="h-4 w-4 mr-1" />
                                    Ver
                                  </a>
                                </Button>
                              ) : (
                                "-"
                              )}
                            </TableCell>
                          </TableRow>
                        ))}
                      </TableBody>
                    </Table>
                  </div>
                )}
              </CardContent>
            </Card>
          );
        })}

        {franquias.length === 0 && (
          <Card>
            <CardContent className="py-8 text-center">
              <p className="text-muted-foreground">Nenhuma franquia encontrada.</p>
            </CardContent>
          </Card>
        )}
      </div>
    </DashboardLayout>
  );
};

export default PaymentPix;
