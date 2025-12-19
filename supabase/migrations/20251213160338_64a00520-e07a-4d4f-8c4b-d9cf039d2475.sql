-- Drop existing restrictive policies on payments
DROP POLICY IF EXISTS "Franquias can view their own payments" ON public.payments;
DROP POLICY IF EXISTS "Master regionais can view payments of their franchises" ON public.payments;

-- Create new PERMISSIVE policies (they work as OR)
CREATE POLICY "Franquias can view their own payments" 
ON public.payments 
FOR SELECT 
TO authenticated
USING (has_role(auth.uid(), 'franquia'::app_role) AND franquia_id = get_user_franquia_id(auth.uid()));

CREATE POLICY "Master regionais can view payments of their franchises" 
ON public.payments 
FOR SELECT 
TO authenticated
USING (has_role(auth.uid(), 'master_regional'::app_role) AND is_master_regional_for_franquia(auth.uid(), franquia_id));

-- Drop existing restrictive policies on customers
DROP POLICY IF EXISTS "Franquias can view their own customers" ON public.customers;
DROP POLICY IF EXISTS "Master regionais can view customers of their franchises" ON public.customers;

-- Create new PERMISSIVE policies for customers
CREATE POLICY "Franquias can view their own customers" 
ON public.customers 
FOR SELECT 
TO authenticated
USING (has_role(auth.uid(), 'franquia'::app_role) AND franquia_id = get_user_franquia_id(auth.uid()));

CREATE POLICY "Master regionais can view customers of their franchises" 
ON public.customers 
FOR SELECT 
TO authenticated
USING (has_role(auth.uid(), 'master_regional'::app_role) AND is_master_regional_for_franquia(auth.uid(), franquia_id));