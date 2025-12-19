-- ============================================
-- VISIUN PAY - SCRIPT DE CONFIGURAÇÃO DO BANCO
-- Execute este script em um novo projeto Supabase
-- ============================================

-- ============================================
-- 1. CRIAR ENUM PARA ROLES
-- ============================================
CREATE TYPE public.app_role AS ENUM ('super_admin', 'admin', 'user', 'master_regional', 'franquia');

-- ============================================
-- 2. CRIAR FUNÇÃO DE UPDATED_AT
-- ============================================
CREATE OR REPLACE FUNCTION public.update_updated_at_column()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$;

-- ============================================
-- 3. CRIAR TABELA USER_ROLES
-- ============================================
CREATE TABLE public.user_roles (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
    role app_role NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE (user_id, role)
);

ALTER TABLE public.user_roles ENABLE ROW LEVEL SECURITY;

-- ============================================
-- 4. CRIAR TABELA MASTER_REGIONAIS
-- ============================================
CREATE TABLE public.master_regionais (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nome TEXT NOT NULL,
    razao_social TEXT NOT NULL,
    cnpj TEXT NOT NULL UNIQUE,
    endereco TEXT NOT NULL,
    email TEXT NOT NULL DEFAULT '',
    telefone TEXT NOT NULL DEFAULT '',
    webhook TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    CONSTRAINT master_regionais_email_unique UNIQUE (email)
);

ALTER TABLE public.master_regionais ENABLE ROW LEVEL SECURITY;

CREATE TRIGGER update_master_regionais_updated_at
    BEFORE UPDATE ON public.master_regionais
    FOR EACH ROW
    EXECUTE FUNCTION public.update_updated_at_column();

-- ============================================
-- 5. CRIAR TABELA FRANQUIAS
-- ============================================
CREATE TABLE public.franquias (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nome TEXT NOT NULL,
    razao_social TEXT NOT NULL,
    cnpj TEXT NOT NULL UNIQUE,
    endereco TEXT NOT NULL,
    email TEXT NOT NULL DEFAULT '',
    telefone TEXT NOT NULL DEFAULT '',
    webhook TEXT,
    master_regional_id UUID REFERENCES public.master_regionais(id) ON DELETE SET NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    CONSTRAINT franquias_email_unique UNIQUE (email)
);

ALTER TABLE public.franquias ENABLE ROW LEVEL SECURITY;

CREATE TRIGGER update_franquias_updated_at
    BEFORE UPDATE ON public.franquias
    FOR EACH ROW
    EXECUTE FUNCTION public.update_updated_at_column();

-- ============================================
-- 6. CRIAR TABELA CUSTOMERS
-- ============================================
CREATE TABLE public.customers (
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

ALTER TABLE public.customers ENABLE ROW LEVEL SECURITY;

CREATE INDEX idx_customers_franquia_id ON public.customers(franquia_id);

CREATE TRIGGER update_customers_updated_at
    BEFORE UPDATE ON public.customers
    FOR EACH ROW
    EXECUTE FUNCTION public.update_updated_at_column();

-- ============================================
-- 7. CRIAR TABELA PAYMENTS
-- ============================================
CREATE TABLE public.payments (
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

ALTER TABLE public.payments ENABLE ROW LEVEL SECURITY;

CREATE INDEX idx_payments_customer_id ON public.payments(customer_id);
CREATE INDEX idx_payments_status ON public.payments(status);
CREATE INDEX idx_payments_due_date ON public.payments(due_date);
CREATE INDEX idx_payments_franquia_id ON public.payments(franquia_id);

CREATE TRIGGER update_payments_updated_at
    BEFORE UPDATE ON public.payments
    FOR EACH ROW
    EXECUTE FUNCTION public.update_updated_at_column();

-- ============================================
-- 8. CRIAR FUNÇÕES AUXILIARES
-- ============================================

-- Função para verificar se usuário tem uma role
CREATE OR REPLACE FUNCTION public.has_role(_user_id UUID, _role app_role)
RETURNS BOOLEAN
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT EXISTS (
    SELECT 1
    FROM public.user_roles
    WHERE user_id = _user_id
      AND role = _role
  )
$$;

-- Função para obter franquia_id do usuário
CREATE OR REPLACE FUNCTION public.get_user_franquia_id(_user_id uuid)
RETURNS uuid
LANGUAGE sql
STABLE SECURITY DEFINER
SET search_path = public
AS $$
  SELECT id FROM public.franquias WHERE email = (
    SELECT email FROM auth.users WHERE id = _user_id
  )
  LIMIT 1
$$;

-- Função para obter master_regional_id do usuário
CREATE OR REPLACE FUNCTION public.get_user_master_regional_id(_user_id uuid)
RETURNS uuid
LANGUAGE sql
STABLE SECURITY DEFINER
SET search_path TO 'public'
AS $$
  SELECT id FROM public.master_regionais WHERE email = (
    SELECT email FROM auth.users WHERE id = _user_id
  )
  LIMIT 1
$$;

-- Função para verificar se usuário é master regional de uma franquia
CREATE OR REPLACE FUNCTION public.is_master_regional_for_franquia(_user_id uuid, _franquia_id uuid)
RETURNS boolean
LANGUAGE sql
STABLE SECURITY DEFINER
SET search_path = public
AS $$
  SELECT EXISTS (
    SELECT 1 FROM public.franquias f
    JOIN public.master_regionais mr ON f.master_regional_id = mr.id
    JOIN auth.users u ON mr.email = u.email
    WHERE u.id = _user_id AND f.id = _franquia_id
  )
$$;

-- ============================================
-- 9. POLÍTICAS RLS - USER_ROLES
-- ============================================

-- Usuários podem ver suas próprias roles
CREATE POLICY "Users can view their own roles"
ON public.user_roles
FOR SELECT
TO authenticated
USING (auth.uid() = user_id);

-- Super admins podem ver todas as roles
CREATE POLICY "Super admins can view all roles"
ON public.user_roles
FOR SELECT
USING (has_role(auth.uid(), 'super_admin'));

-- Super admins podem inserir roles
CREATE POLICY "Super admins can insert roles"
ON public.user_roles
FOR INSERT
WITH CHECK (has_role(auth.uid(), 'super_admin'));

-- Super admins podem atualizar roles
CREATE POLICY "Super admins can update roles"
ON public.user_roles
FOR UPDATE
USING (has_role(auth.uid(), 'super_admin'));

-- Super admins podem deletar roles
CREATE POLICY "Super admins can delete roles"
ON public.user_roles
FOR DELETE
USING (has_role(auth.uid(), 'super_admin'));

-- ============================================
-- 10. POLÍTICAS RLS - MASTER_REGIONAIS
-- ============================================

-- Super admins podem ver todos os master regionais
CREATE POLICY "Super admins can view all master regionais"
ON public.master_regionais
FOR SELECT
TO authenticated
USING (public.has_role(auth.uid(), 'super_admin'));

-- Super admins podem inserir master regionais
CREATE POLICY "Super admins can insert master regionais"
ON public.master_regionais
FOR INSERT
TO authenticated
WITH CHECK (public.has_role(auth.uid(), 'super_admin'));

-- Super admins podem atualizar master regionais
CREATE POLICY "Super admins can update master regionais"
ON public.master_regionais
FOR UPDATE
TO authenticated
USING (public.has_role(auth.uid(), 'super_admin'));

-- Super admins podem deletar master regionais
CREATE POLICY "Super admins can delete master regionais"
ON public.master_regionais
FOR DELETE
TO authenticated
USING (public.has_role(auth.uid(), 'super_admin'));

-- Master regionais podem ver seu próprio registro
CREATE POLICY "Master regionais can view their own record"
ON public.master_regionais
FOR SELECT
USING (
  has_role(auth.uid(), 'master_regional'::app_role)
  AND id = get_user_master_regional_id(auth.uid())
);

-- ============================================
-- 11. POLÍTICAS RLS - FRANQUIAS
-- ============================================

-- Super admins podem ver todas as franquias
CREATE POLICY "Super admins can view all franquias"
ON public.franquias
FOR SELECT
TO authenticated
USING (public.has_role(auth.uid(), 'super_admin'));

-- Super admins podem inserir franquias
CREATE POLICY "Super admins can insert franquias"
ON public.franquias
FOR INSERT
TO authenticated
WITH CHECK (public.has_role(auth.uid(), 'super_admin'));

-- Super admins podem atualizar franquias
CREATE POLICY "Super admins can update franquias"
ON public.franquias
FOR UPDATE
TO authenticated
USING (public.has_role(auth.uid(), 'super_admin'));

-- Super admins podem deletar franquias
CREATE POLICY "Super admins can delete franquias"
ON public.franquias
FOR DELETE
TO authenticated
USING (public.has_role(auth.uid(), 'super_admin'));

-- Master regionais podem ver suas franquias
CREATE POLICY "Master regionais can view their franquias"
ON public.franquias
FOR SELECT
USING (
  has_role(auth.uid(), 'master_regional'::app_role)
  AND master_regional_id = get_user_master_regional_id(auth.uid())
);

-- Master regionais podem inserir franquias sob eles
CREATE POLICY "Master regionais can insert their franquias"
ON public.franquias
FOR INSERT
WITH CHECK (
  has_role(auth.uid(), 'master_regional'::app_role)
  AND master_regional_id = get_user_master_regional_id(auth.uid())
);

-- Master regionais podem atualizar suas franquias
CREATE POLICY "Master regionais can update their franquias"
ON public.franquias
FOR UPDATE
USING (
  has_role(auth.uid(), 'master_regional'::app_role)
  AND master_regional_id = get_user_master_regional_id(auth.uid())
);

-- Master regionais podem deletar suas franquias
CREATE POLICY "Master regionais can delete their franquias"
ON public.franquias
FOR DELETE
USING (
  has_role(auth.uid(), 'master_regional'::app_role)
  AND master_regional_id = get_user_master_regional_id(auth.uid())
);

-- ============================================
-- 12. POLÍTICAS RLS - CUSTOMERS
-- ============================================

-- Franquias podem ver seus próprios clientes
CREATE POLICY "Franquias can view their own customers"
ON public.customers
FOR SELECT
TO authenticated
USING (
  has_role(auth.uid(), 'franquia'::app_role)
  AND franquia_id = get_user_franquia_id(auth.uid())
);

-- Master regionais podem ver clientes de suas franquias
CREATE POLICY "Master regionais can view customers of their franchises"
ON public.customers
FOR SELECT
TO authenticated
USING (
  has_role(auth.uid(), 'master_regional'::app_role)
  AND is_master_regional_for_franquia(auth.uid(), franquia_id)
);

-- Super admins podem ver todos os clientes
CREATE POLICY "Super admins can view all customers"
ON public.customers
FOR SELECT
TO authenticated
USING (has_role(auth.uid(), 'super_admin'::app_role));

-- Franquias podem inserir seus próprios clientes
CREATE POLICY "Franquias can insert their own customers"
ON public.customers
FOR INSERT
TO authenticated
WITH CHECK (
  has_role(auth.uid(), 'franquia'::app_role)
  AND franquia_id = get_user_franquia_id(auth.uid())
);

-- Super admins podem inserir clientes
CREATE POLICY "Super admins can insert customers"
ON public.customers
FOR INSERT
TO authenticated
WITH CHECK (has_role(auth.uid(), 'super_admin'::app_role));

-- Franquias podem atualizar seus próprios clientes
CREATE POLICY "Franquias can update their own customers"
ON public.customers
FOR UPDATE
TO authenticated
USING (
  has_role(auth.uid(), 'franquia'::app_role)
  AND franquia_id = get_user_franquia_id(auth.uid())
);

-- Super admins podem atualizar clientes
CREATE POLICY "Super admins can update customers"
ON public.customers
FOR UPDATE
TO authenticated
USING (has_role(auth.uid(), 'super_admin'::app_role));

-- Super admins podem deletar clientes
CREATE POLICY "Super admins can delete customers"
ON public.customers
FOR DELETE
TO authenticated
USING (has_role(auth.uid(), 'super_admin'::app_role));

-- ============================================
-- 13. POLÍTICAS RLS - PAYMENTS
-- ============================================

-- Franquias podem ver seus próprios pagamentos
CREATE POLICY "Franquias can view their own payments"
ON public.payments
FOR SELECT
TO authenticated
USING (
  has_role(auth.uid(), 'franquia'::app_role)
  AND franquia_id = get_user_franquia_id(auth.uid())
);

-- Master regionais podem ver pagamentos de suas franquias
CREATE POLICY "Master regionais can view payments of their franchises"
ON public.payments
FOR SELECT
TO authenticated
USING (
  has_role(auth.uid(), 'master_regional'::app_role)
  AND is_master_regional_for_franquia(auth.uid(), franquia_id)
);

-- Super admins podem ver todos os pagamentos
CREATE POLICY "Super admins can view all payments"
ON public.payments
FOR SELECT
TO authenticated
USING (has_role(auth.uid(), 'super_admin'::app_role));

-- Franquias podem inserir seus próprios pagamentos
CREATE POLICY "Franquias can insert their own payments"
ON public.payments
FOR INSERT
TO authenticated
WITH CHECK (
  has_role(auth.uid(), 'franquia'::app_role)
  AND franquia_id = get_user_franquia_id(auth.uid())
);

-- Super admins podem inserir pagamentos
CREATE POLICY "Super admins can insert payments"
ON public.payments
FOR INSERT
TO authenticated
WITH CHECK (has_role(auth.uid(), 'super_admin'::app_role));

-- Franquias podem atualizar seus próprios pagamentos
CREATE POLICY "Franquias can update their own payments"
ON public.payments
FOR UPDATE
TO authenticated
USING (
  has_role(auth.uid(), 'franquia'::app_role)
  AND franquia_id = get_user_franquia_id(auth.uid())
);

-- Super admins podem atualizar pagamentos
CREATE POLICY "Super admins can update payments"
ON public.payments
FOR UPDATE
TO authenticated
USING (has_role(auth.uid(), 'super_admin'::app_role));

-- Super admins podem deletar pagamentos
CREATE POLICY "Super admins can delete payments"
ON public.payments
FOR DELETE
TO authenticated
USING (has_role(auth.uid(), 'super_admin'::app_role));

-- ============================================
-- 14. CRIAR PRIMEIRO SUPER ADMIN (OPCIONAL)
-- Execute depois de criar um usuário no Auth
-- Substitua 'USER_ID_AQUI' pelo UUID do usuário
-- ============================================

-- INSERT INTO public.user_roles (user_id, role)
-- VALUES ('USER_ID_AQUI', 'super_admin');
