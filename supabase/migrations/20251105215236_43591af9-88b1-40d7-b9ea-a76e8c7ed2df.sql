-- Update RLS policies for data segregation by franchise

-- Drop existing policies for customers
DROP POLICY IF EXISTS "Super admins can view all customers" ON customers;
DROP POLICY IF EXISTS "Super admins can insert customers" ON customers;
DROP POLICY IF EXISTS "Super admins can update customers" ON customers;
DROP POLICY IF EXISTS "Super admins can delete customers" ON customers;

-- Drop existing policies for payments
DROP POLICY IF EXISTS "Super admins can view all payments" ON payments;
DROP POLICY IF EXISTS "Super admins can insert payments" ON payments;
DROP POLICY IF EXISTS "Super admins can update payments" ON payments;
DROP POLICY IF EXISTS "Super admins can delete payments" ON payments;

-- Helper function to get user's franchise ID
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

-- Helper function to check if user is master regional for a franchise
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

-- CUSTOMERS POLICIES

-- Franquias can view their own customers
CREATE POLICY "Franquias can view their own customers"
ON public.customers
FOR SELECT
TO authenticated
USING (
  has_role(auth.uid(), 'franquia'::app_role) 
  AND franquia_id = get_user_franquia_id(auth.uid())
);

-- Master regionais can view customers of their franchises
CREATE POLICY "Master regionais can view customers of their franchises"
ON public.customers
FOR SELECT
TO authenticated
USING (
  has_role(auth.uid(), 'master_regional'::app_role) 
  AND is_master_regional_for_franquia(auth.uid(), franquia_id)
);

-- Super admins can view all customers
CREATE POLICY "Super admins can view all customers"
ON public.customers
FOR SELECT
TO authenticated
USING (has_role(auth.uid(), 'super_admin'::app_role));

-- Franquias can insert their own customers
CREATE POLICY "Franquias can insert their own customers"
ON public.customers
FOR INSERT
TO authenticated
WITH CHECK (
  has_role(auth.uid(), 'franquia'::app_role) 
  AND franquia_id = get_user_franquia_id(auth.uid())
);

-- Super admins can insert customers
CREATE POLICY "Super admins can insert customers"
ON public.customers
FOR INSERT
TO authenticated
WITH CHECK (has_role(auth.uid(), 'super_admin'::app_role));

-- Franquias can update their own customers
CREATE POLICY "Franquias can update their own customers"
ON public.customers
FOR UPDATE
TO authenticated
USING (
  has_role(auth.uid(), 'franquia'::app_role) 
  AND franquia_id = get_user_franquia_id(auth.uid())
);

-- Super admins can update customers
CREATE POLICY "Super admins can update customers"
ON public.customers
FOR UPDATE
TO authenticated
USING (has_role(auth.uid(), 'super_admin'::app_role));

-- Super admins can delete customers
CREATE POLICY "Super admins can delete customers"
ON public.customers
FOR DELETE
TO authenticated
USING (has_role(auth.uid(), 'super_admin'::app_role));

-- PAYMENTS POLICIES

-- Franquias can view their own payments
CREATE POLICY "Franquias can view their own payments"
ON public.payments
FOR SELECT
TO authenticated
USING (
  has_role(auth.uid(), 'franquia'::app_role) 
  AND franquia_id = get_user_franquia_id(auth.uid())
);

-- Master regionais can view payments of their franchises
CREATE POLICY "Master regionais can view payments of their franchises"
ON public.payments
FOR SELECT
TO authenticated
USING (
  has_role(auth.uid(), 'master_regional'::app_role) 
  AND is_master_regional_for_franquia(auth.uid(), franquia_id)
);

-- Super admins can view all payments
CREATE POLICY "Super admins can view all payments"
ON public.payments
FOR SELECT
TO authenticated
USING (has_role(auth.uid(), 'super_admin'::app_role));

-- Franquias can insert their own payments
CREATE POLICY "Franquias can insert their own payments"
ON public.payments
FOR INSERT
TO authenticated
WITH CHECK (
  has_role(auth.uid(), 'franquia'::app_role) 
  AND franquia_id = get_user_franquia_id(auth.uid())
);

-- Super admins can insert payments
CREATE POLICY "Super admins can insert payments"
ON public.payments
FOR INSERT
TO authenticated
WITH CHECK (has_role(auth.uid(), 'super_admin'::app_role));

-- Franquias can update their own payments
CREATE POLICY "Franquias can update their own payments"
ON public.payments
FOR UPDATE
TO authenticated
USING (
  has_role(auth.uid(), 'franquia'::app_role) 
  AND franquia_id = get_user_franquia_id(auth.uid())
);

-- Super admins can update payments
CREATE POLICY "Super admins can update payments"
ON public.payments
FOR UPDATE
TO authenticated
USING (has_role(auth.uid(), 'super_admin'::app_role));

-- Super admins can delete payments
CREATE POLICY "Super admins can delete payments"
ON public.payments
FOR DELETE
TO authenticated
USING (has_role(auth.uid(), 'super_admin'::app_role));