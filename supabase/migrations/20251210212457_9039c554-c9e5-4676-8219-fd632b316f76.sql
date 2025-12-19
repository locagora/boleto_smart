-- Create function to get master_regional_id for current user
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

-- Allow Master Regionais to view their own franquias
CREATE POLICY "Master regionais can view their franquias"
ON public.franquias
FOR SELECT
USING (
  has_role(auth.uid(), 'master_regional'::app_role) 
  AND master_regional_id = get_user_master_regional_id(auth.uid())
);

-- Allow Master Regionais to insert franquias under them
CREATE POLICY "Master regionais can insert their franquias"
ON public.franquias
FOR INSERT
WITH CHECK (
  has_role(auth.uid(), 'master_regional'::app_role) 
  AND master_regional_id = get_user_master_regional_id(auth.uid())
);

-- Allow Master Regionais to update their franquias
CREATE POLICY "Master regionais can update their franquias"
ON public.franquias
FOR UPDATE
USING (
  has_role(auth.uid(), 'master_regional'::app_role) 
  AND master_regional_id = get_user_master_regional_id(auth.uid())
);

-- Allow Master Regionais to delete their franquias
CREATE POLICY "Master regionais can delete their franquias"
ON public.franquias
FOR DELETE
USING (
  has_role(auth.uid(), 'master_regional'::app_role) 
  AND master_regional_id = get_user_master_regional_id(auth.uid())
);

-- Allow Master Regionais to view their own master_regional record
CREATE POLICY "Master regionais can view their own record"
ON public.master_regionais
FOR SELECT
USING (
  has_role(auth.uid(), 'master_regional'::app_role) 
  AND id = get_user_master_regional_id(auth.uid())
);