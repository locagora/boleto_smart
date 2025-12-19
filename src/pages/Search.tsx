import { useState } from "react";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Badge } from "@/components/ui/badge";
import { Search as SearchIcon, FileText, AlertCircle, User, Building2, ExternalLink } from "lucide-react";
import { Link } from "react-router-dom";
import { supabase } from "@/integrations/supabase/client";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";

interface Payment {
  id: string;
  description: string;
  billing_type: string;
  value: number;
  due_date: string;
  status: string;
  bank_slip_url: string | null;
  invoice_url: string | null;
}

interface CustomerWithPayments {
  id: string;
  name: string;
  cpf_cnpj: string;
  payments: Payment[];
}

const Search = () => {
  const [cpf, setCpf] = useState("");
  const [isSearching, setIsSearching] = useState(false);
  const [customerData, setCustomerData] = useState<CustomerWithPayments | null>(null);
  const [notFound, setNotFound] = useState(false);

  const handleSearch = async () => {
    setIsSearching(true);
    setNotFound(false);
    setCustomerData(null);

    try {
      const cleanDoc = cpf.replace(/\D/g, "");

      // Buscar cliente pelo CPF/CNPJ
      const { data: customers, error: customerError } = await supabase
        .from('customers')
        .select('id, name, cpf_cnpj')
        .eq('cpf_cnpj', cleanDoc);

      if (customerError) {
        console.error('Erro ao buscar cliente:', customerError);
        setNotFound(true);
        return;
      }

      if (!customers || customers.length === 0) {
        setNotFound(true);
        return;
      }

      // Pegar todos os IDs de clientes com esse CPF/CNPJ (pode haver em várias franquias)
      const customerIds = customers.map(c => c.id);

      // Buscar pagamentos pendentes ou vencidos desses clientes
      const { data: payments, error: paymentsError } = await supabase
        .from('payments')
        .select('id, description, billing_type, value, due_date, status, bank_slip_url, invoice_url')
        .in('customer_id', customerIds)
        .in('status', ['PENDING', 'OVERDUE'])
        .order('due_date', { ascending: true });

      if (paymentsError) {
        console.error('Erro ao buscar pagamentos:', paymentsError);
        setNotFound(true);
        return;
      }

      // Usar o primeiro cliente encontrado para exibir os dados
      const customer = customers[0];

      setCustomerData({
        id: customer.id,
        name: customer.name,
        cpf_cnpj: customer.cpf_cnpj,
        payments: payments || []
      });

    } catch (error) {
      console.error('Erro na busca:', error);
      setNotFound(true);
    } finally {
      setIsSearching(false);
    }
  };

  const formatDocument = (value: string) => {
    const numbers = value.replace(/\D/g, "");
    if (numbers.length <= 11) {
      return numbers
        .replace(/(\d{3})(\d)/, "$1.$2")
        .replace(/(\d{3})(\d)/, "$1.$2")
        .replace(/(\d{3})(\d{1,2})$/, "$1-$2");
    } else {
      return numbers
        .slice(0, 14)
        .replace(/(\d{2})(\d)/, "$1.$2")
        .replace(/(\d{3})(\d)/, "$1.$2")
        .replace(/(\d{3})(\d)/, "$1/$2")
        .replace(/(\d{4})(\d{1,2})$/, "$1-$2");
    }
  };

  const formatCpfCnpj = (value: string) => {
    const numbers = value.replace(/\D/g, "");
    if (numbers.length <= 11) {
      return numbers
        .replace(/(\d{3})(\d)/, "$1.$2")
        .replace(/(\d{3})(\d)/, "$1.$2")
        .replace(/(\d{3})(\d{1,2})$/, "$1-$2");
    }
    return numbers
      .replace(/(\d{2})(\d)/, "$1.$2")
      .replace(/(\d{3})(\d)/, "$1.$2")
      .replace(/(\d{3})(\d)/, "$1/$2")
      .replace(/(\d{4})(\d{1,2})$/, "$1-$2");
  };

  const formatCurrency = (value: number) => {
    return new Intl.NumberFormat('pt-BR', {
      style: 'currency',
      currency: 'BRL'
    }).format(value);
  };

  const formatDate = (dateString: string) => {
    const [year, month, day] = dateString.split('-');
    return `${day}/${month}/${year}`;
  };

  const getStatusBadge = (status: string) => {
    if (status === 'OVERDUE') {
      return <Badge variant="destructive">Vencido</Badge>;
    } else if (status === 'PENDING') {
      return <Badge className="bg-yellow-500/20 text-yellow-700 border-yellow-500/30">Pendente</Badge>;
    }
    return <Badge variant="secondary">{status}</Badge>;
  };

  const getBillingTypeLabel = (type: string) => {
    switch (type) {
      case 'BOLETO':
        return 'Boleto';
      case 'PIX':
        return 'PIX';
      case 'CREDIT_CARD':
        return 'Cartão';
      default:
        return type;
    }
  };

  return (
    <div className="min-h-screen bg-gradient-to-b from-background to-muted">
      {/* Header */}
      <header className="border-b bg-card/80 backdrop-blur-sm">
        <div className="container mx-auto px-4 flex items-center justify-between">
          <Link to="/" className="flex items-center gap-2">
            <img src="/logo.png" alt="BoletoSmart" className="h-20 scale-[2] origin-left" />
          </Link>
          <nav className="flex items-center gap-4">
            <Link to="/auth" className="text-sm text-muted-foreground hover:text-foreground transition-colors">
              Entrar
            </Link>
          </nav>
        </div>
      </header>

      <div className="container mx-auto px-4 py-12">
        <div className="max-w-4xl mx-auto space-y-6">
          {/* Search Section */}
          <Card className="p-8">
            <div className="text-center mb-8">
              <div className="h-16 w-16 rounded-full bg-primary/10 flex items-center justify-center mx-auto mb-4">
                <SearchIcon className="h-8 w-8 text-primary" />
              </div>
              <h1 className="text-3xl font-bold text-foreground mb-2">Buscar 2ª Via</h1>
              <p className="text-muted-foreground">
                Digite seu CPF ou CNPJ para consultar boletos pendentes
              </p>
            </div>

            <div className="space-y-4">
              <div className="flex gap-2">
                <Input
                  type="text"
                  placeholder="Digite seu CPF ou CNPJ"
                  value={cpf}
                  onChange={(e) => setCpf(formatDocument(e.target.value))}
                  onKeyDown={(e) => {
                    if (e.key === 'Enter' && cpf.replace(/\D/g, "").length >= 11) {
                      handleSearch();
                    }
                  }}
                  maxLength={18}
                  className="text-lg"
                />
                <Button onClick={handleSearch} disabled={isSearching || cpf.replace(/\D/g, "").length < 11} size="lg">
                  {isSearching ? "Buscando..." : "Buscar"}
                </Button>
              </div>
            </div>
          </Card>

          {/* Results */}
          {customerData && (
            <Card>
              <CardHeader className="pb-4">
                <div className="flex items-start gap-4">
                  <div className="w-12 h-12 bg-primary/10 rounded-full flex items-center justify-center flex-shrink-0">
                    {customerData.cpf_cnpj.length > 11 ? (
                      <Building2 className="w-6 h-6 text-primary" />
                    ) : (
                      <User className="w-6 h-6 text-primary" />
                    )}
                  </div>
                  <div className="flex-1 min-w-0">
                    <CardTitle className="text-xl font-semibold truncate">{customerData.name}</CardTitle>
                    <p className="text-muted-foreground text-sm mt-1">
                      {customerData.cpf_cnpj.length > 11 ? 'CNPJ' : 'CPF'}: {formatCpfCnpj(customerData.cpf_cnpj)}
                    </p>
                  </div>
                </div>
              </CardHeader>
              <CardContent>
                {customerData.payments && customerData.payments.length > 0 ? (
                  <div className="rounded-lg border overflow-hidden">
                    <Table>
                      <TableHeader>
                        <TableRow className="bg-muted/50">
                          <TableHead>Descrição</TableHead>
                          <TableHead>Tipo</TableHead>
                          <TableHead>Valor</TableHead>
                          <TableHead>Vencimento</TableHead>
                          <TableHead>Status</TableHead>
                          <TableHead className="text-right">Ações</TableHead>
                        </TableRow>
                      </TableHeader>
                      <TableBody>
                        {customerData.payments.map((payment) => (
                          <TableRow key={payment.id}>
                            <TableCell className="font-medium max-w-[200px]">
                              <span className="line-clamp-2">{payment.description || 'Cobrança'}</span>
                            </TableCell>
                            <TableCell>
                              <Badge variant="outline">{getBillingTypeLabel(payment.billing_type)}</Badge>
                            </TableCell>
                            <TableCell className="font-semibold">{formatCurrency(payment.value)}</TableCell>
                            <TableCell>{formatDate(payment.due_date)}</TableCell>
                            <TableCell>{getStatusBadge(payment.status)}</TableCell>
                            <TableCell className="text-right">
                              {(payment.bank_slip_url || payment.invoice_url) && (
                                <a
                                  href={payment.bank_slip_url || payment.invoice_url || ''}
                                  target="_blank"
                                  rel="noopener noreferrer"
                                >
                                  <Button variant="outline" size="sm" className="gap-1">
                                    <ExternalLink className="h-3 w-3" />
                                    2ª Via
                                  </Button>
                                </a>
                              )}
                            </TableCell>
                          </TableRow>
                        ))}
                      </TableBody>
                    </Table>
                  </div>
                ) : (
                  <div className="text-center py-8 text-muted-foreground">
                    <FileText className="w-12 h-12 mx-auto mb-4 opacity-50" />
                    <p className="text-green-600 font-medium">Nenhum boleto pendente encontrado!</p>
                    <p className="text-sm mt-1">Você está em dia com suas cobranças.</p>
                  </div>
                )}
              </CardContent>
            </Card>
          )}

          {/* Not Found Message */}
          {notFound && (
            <Card className="p-8 text-center">
              <AlertCircle className="h-12 w-12 text-warning mx-auto mb-4" />
              <h3 className="text-lg font-semibold text-foreground mb-2">
                Nenhum cadastro encontrado
              </h3>
              <p className="text-muted-foreground">
                Não encontramos cadastro para o documento informado. Verifique se digitou corretamente.
              </p>
            </Card>
          )}
        </div>
      </div>
    </div>
  );
};

export default Search;
