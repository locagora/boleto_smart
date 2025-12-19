-- Create enum for user roles
CREATE TYPE public.app_role AS ENUM ('super_admin', 'admin', 'user');

-- Create user_roles table
CREATE TABLE public.user_roles (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
    role app_role NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE (user_id, role)
);

-- Enable RLS on user_roles
ALTER TABLE public.user_roles ENABLE ROW LEVEL SECURITY;

-- Create security definer function to check roles
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

-- Create master_regionais table
CREATE TABLE public.master_regionais (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nome TEXT NOT NULL,
    razao_social TEXT NOT NULL,
    cnpj TEXT NOT NULL UNIQUE,
    endereco TEXT NOT NULL,
    webhook TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Enable RLS on master_regionais
ALTER TABLE public.master_regionais ENABLE ROW LEVEL SECURITY;

-- Create franquias table
CREATE TABLE public.franquias (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nome TEXT NOT NULL,
    razao_social TEXT NOT NULL,
    cnpj TEXT NOT NULL UNIQUE,
    endereco TEXT NOT NULL,
    webhook TEXT,
    master_regional_id UUID REFERENCES public.master_regionais(id) ON DELETE SET NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Enable RLS on franquias
ALTER TABLE public.franquias ENABLE ROW LEVEL SECURITY;

-- RLS Policies for user_roles
CREATE POLICY "Users can view their own roles"
ON public.user_roles
FOR SELECT
TO authenticated
USING (auth.uid() = user_id);

CREATE POLICY "Super admins can view all roles"
ON public.user_roles
FOR SELECT
TO authenticated
USING (public.has_role(auth.uid(), 'super_admin'));

CREATE POLICY "Super admins can manage roles"
ON public.user_roles
FOR ALL
TO authenticated
USING (public.has_role(auth.uid(), 'super_admin'));

-- RLS Policies for master_regionais
CREATE POLICY "Super admins can view all master regionais"
ON public.master_regionais
FOR SELECT
TO authenticated
USING (public.has_role(auth.uid(), 'super_admin'));

CREATE POLICY "Super admins can insert master regionais"
ON public.master_regionais
FOR INSERT
TO authenticated
WITH CHECK (public.has_role(auth.uid(), 'super_admin'));

CREATE POLICY "Super admins can update master regionais"
ON public.master_regionais
FOR UPDATE
TO authenticated
USING (public.has_role(auth.uid(), 'super_admin'));

CREATE POLICY "Super admins can delete master regionais"
ON public.master_regionais
FOR DELETE
TO authenticated
USING (public.has_role(auth.uid(), 'super_admin'));

-- RLS Policies for franquias
CREATE POLICY "Super admins can view all franquias"
ON public.franquias
FOR SELECT
TO authenticated
USING (public.has_role(auth.uid(), 'super_admin'));

CREATE POLICY "Super admins can insert franquias"
ON public.franquias
FOR INSERT
TO authenticated
WITH CHECK (public.has_role(auth.uid(), 'super_admin'));

CREATE POLICY "Super admins can update franquias"
ON public.franquias
FOR UPDATE
TO authenticated
USING (public.has_role(auth.uid(), 'super_admin'));

CREATE POLICY "Super admins can delete franquias"
ON public.franquias
FOR DELETE
TO authenticated
USING (public.has_role(auth.uid(), 'super_admin'));

-- Create trigger function for updated_at
CREATE OR REPLACE FUNCTION public.update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create triggers for updated_at
CREATE TRIGGER update_master_regionais_updated_at
    BEFORE UPDATE ON public.master_regionais
    FOR EACH ROW
    EXECUTE FUNCTION public.update_updated_at_column();

CREATE TRIGGER update_franquias_updated_at
    BEFORE UPDATE ON public.franquias
    FOR EACH ROW
    EXECUTE FUNCTION public.update_updated_at_column();