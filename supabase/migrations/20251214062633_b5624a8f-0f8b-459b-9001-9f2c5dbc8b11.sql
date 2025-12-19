-- Add policy for franquias to view their own data by email
DROP POLICY IF EXISTS "Franquias can view their own data by email" ON public.franquias;
CREATE POLICY "Franquias can view their own data by email"
ON public.franquias
FOR SELECT
USING (email = (SELECT email FROM auth.users WHERE id = auth.uid()));

-- Add policy for franquias to update their own data
DROP POLICY IF EXISTS "Franquias can update their own data" ON public.franquias;
CREATE POLICY "Franquias can update their own data"
ON public.franquias
FOR UPDATE
USING (email = (SELECT email FROM auth.users WHERE id = auth.uid()));