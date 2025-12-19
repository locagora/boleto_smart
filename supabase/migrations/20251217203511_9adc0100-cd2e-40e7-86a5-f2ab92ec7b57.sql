-- Add RLS policies for master_regional to insert/update payment_pix for their franchises
CREATE POLICY "Master regionais can insert payment_pix for their franchises"
ON public.payment_pix
FOR INSERT
WITH CHECK (
  has_role(auth.uid(), 'master_regional'::app_role) 
  AND is_master_regional_for_franquia(auth.uid(), franquia_id)
);

CREATE POLICY "Master regionais can update payment_pix for their franchises"
ON public.payment_pix
FOR UPDATE
USING (
  has_role(auth.uid(), 'master_regional'::app_role) 
  AND is_master_regional_for_franquia(auth.uid(), franquia_id)
);