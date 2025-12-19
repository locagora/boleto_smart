-- Drop the policy that was breaking payments access
DROP POLICY IF EXISTS "Franquias can view their own data" ON public.franquias;
