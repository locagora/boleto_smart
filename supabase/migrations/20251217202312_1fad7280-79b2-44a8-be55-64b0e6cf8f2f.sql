-- Create payment_pix table for PIX payment tracking
CREATE TABLE public.payment_pix (
  id TEXT NOT NULL PRIMARY KEY,
  customer_id TEXT NOT NULL,
  customer_name TEXT,
  description TEXT,
  billing_type TEXT NOT NULL DEFAULT 'PIX',
  status TEXT NOT NULL,
  value NUMERIC NOT NULL,
  net_value NUMERIC,
  date_created DATE NOT NULL,
  payment_date DATE,
  due_date DATE,
  transaction_receipt_url TEXT,
  invoice_url TEXT,
  franquia_id UUID,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);

-- Enable RLS
ALTER TABLE public.payment_pix ENABLE ROW LEVEL SECURITY;

-- Create trigger for updated_at
CREATE TRIGGER update_payment_pix_updated_at
  BEFORE UPDATE ON public.payment_pix
  FOR EACH ROW
  EXECUTE FUNCTION public.update_updated_at_column();

-- RLS Policies (same pattern as payments table)
CREATE POLICY "Super admin can view all payment_pix"
  ON public.payment_pix FOR SELECT
  USING (is_super_admin());

CREATE POLICY "Super admins can insert payment_pix"
  ON public.payment_pix FOR INSERT
  WITH CHECK (has_role(auth.uid(), 'super_admin'::app_role));

CREATE POLICY "Super admins can update payment_pix"
  ON public.payment_pix FOR UPDATE
  USING (has_role(auth.uid(), 'super_admin'::app_role));

CREATE POLICY "Super admins can delete payment_pix"
  ON public.payment_pix FOR DELETE
  USING (has_role(auth.uid(), 'super_admin'::app_role));

CREATE POLICY "Franquias can view own payment_pix"
  ON public.payment_pix FOR SELECT
  USING (franquia_id IN (SELECT get_user_franquia_ids()));

CREATE POLICY "Franquias can insert their own payment_pix"
  ON public.payment_pix FOR INSERT
  WITH CHECK (has_role(auth.uid(), 'franquia'::app_role) AND franquia_id = get_user_franquia_id(auth.uid()));

CREATE POLICY "Franquias can update their own payment_pix"
  ON public.payment_pix FOR UPDATE
  USING (has_role(auth.uid(), 'franquia'::app_role) AND franquia_id = get_user_franquia_id(auth.uid()));

CREATE POLICY "Master regional can view franchise payment_pix"
  ON public.payment_pix FOR SELECT
  USING (franquia_id IN (
    SELECT f.id FROM franquias f
    WHERE f.master_regional_id IN (SELECT get_user_master_ids())
  ));

CREATE POLICY "Master regionais can view payment_pix of their franchises"
  ON public.payment_pix FOR SELECT
  USING (has_role(auth.uid(), 'master_regional'::app_role) AND is_master_regional_for_franquia(auth.uid(), franquia_id));