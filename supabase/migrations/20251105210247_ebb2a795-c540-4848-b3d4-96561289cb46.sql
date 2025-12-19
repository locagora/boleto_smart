-- Create payments table
CREATE TABLE IF NOT EXISTS public.payments (
  id TEXT PRIMARY KEY,
  date_created DATE NOT NULL,
  customer_id TEXT NOT NULL,
  subscription TEXT,
  value DECIMAL(10,2) NOT NULL,
  net_value DECIMAL(10,2),
  description TEXT,
  billing_type TEXT NOT NULL,
  status TEXT NOT NULL,
  due_date DATE NOT NULL,
  original_due_date DATE,
  payment_date DATE,
  invoice_url TEXT,
  invoice_number TEXT,
  bank_slip_url TEXT,
  nosso_numero TEXT,
  discount JSONB,
  fine JSONB,
  interest JSONB,
  franquia_id UUID REFERENCES public.franquias(id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create customers table
CREATE TABLE IF NOT EXISTS public.customers (
  id TEXT PRIMARY KEY,
  date_created DATE NOT NULL,
  name TEXT NOT NULL,
  email TEXT,
  mobile_phone TEXT,
  cpf_cnpj TEXT NOT NULL,
  person_type TEXT NOT NULL,
  city_name TEXT,
  state TEXT,
  country TEXT,
  franquia_id UUID REFERENCES public.franquias(id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Enable RLS
ALTER TABLE public.payments ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.customers ENABLE ROW LEVEL SECURITY;

-- RLS policies for payments
CREATE POLICY "Super admins can view all payments"
  ON public.payments
  FOR SELECT
  USING (has_role(auth.uid(), 'super_admin'::app_role));

CREATE POLICY "Super admins can insert payments"
  ON public.payments
  FOR INSERT
  WITH CHECK (has_role(auth.uid(), 'super_admin'::app_role));

CREATE POLICY "Super admins can update payments"
  ON public.payments
  FOR UPDATE
  USING (has_role(auth.uid(), 'super_admin'::app_role));

CREATE POLICY "Super admins can delete payments"
  ON public.payments
  FOR DELETE
  USING (has_role(auth.uid(), 'super_admin'::app_role));

-- RLS policies for customers
CREATE POLICY "Super admins can view all customers"
  ON public.customers
  FOR SELECT
  USING (has_role(auth.uid(), 'super_admin'::app_role));

CREATE POLICY "Super admins can insert customers"
  ON public.customers
  FOR INSERT
  WITH CHECK (has_role(auth.uid(), 'super_admin'::app_role));

CREATE POLICY "Super admins can update customers"
  ON public.customers
  FOR UPDATE
  USING (has_role(auth.uid(), 'super_admin'::app_role));

CREATE POLICY "Super admins can delete customers"
  ON public.customers
  FOR DELETE
  USING (has_role(auth.uid(), 'super_admin'::app_role));

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_payments_customer_id ON public.payments(customer_id);
CREATE INDEX IF NOT EXISTS idx_payments_status ON public.payments(status);
CREATE INDEX IF NOT EXISTS idx_payments_due_date ON public.payments(due_date);
CREATE INDEX IF NOT EXISTS idx_payments_franquia_id ON public.payments(franquia_id);
CREATE INDEX IF NOT EXISTS idx_customers_franquia_id ON public.customers(franquia_id);

-- Trigger for updated_at
CREATE TRIGGER update_payments_updated_at
  BEFORE UPDATE ON public.payments
  FOR EACH ROW
  EXECUTE FUNCTION public.update_updated_at_column();

CREATE TRIGGER update_customers_updated_at
  BEFORE UPDATE ON public.customers
  FOR EACH ROW
  EXECUTE FUNCTION public.update_updated_at_column();