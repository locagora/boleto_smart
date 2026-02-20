-- Fix ALL payment_boleto RLS policies to use user_entities functions
-- Replaces old is_master_regional_for_franquia() and get_user_franquia_id() references

-- =====================================================
-- MASTER REGIONAL: Fix INSERT policy
-- =====================================================
DROP POLICY IF EXISTS "Master regionais can insert payment_boleto for their franchises" ON public.payment_boleto;

CREATE POLICY "Master regionais can insert payment_boleto for their franchises"
  ON public.payment_boleto FOR INSERT
  WITH CHECK (
    has_role(auth.uid(), 'master_regional'::app_role)
    AND franquia_id IN (
      SELECT f.id FROM franquias f
      WHERE f.master_regional_id IN (SELECT get_user_master_ids())
    )
  );

-- =====================================================
-- MASTER REGIONAL: Fix UPDATE policy
-- =====================================================
DROP POLICY IF EXISTS "Master regionais can update payment_boleto for their franchises" ON public.payment_boleto;

CREATE POLICY "Master regionais can update payment_boleto for their franchises"
  ON public.payment_boleto FOR UPDATE
  USING (
    has_role(auth.uid(), 'master_regional'::app_role)
    AND franquia_id IN (
      SELECT f.id FROM franquias f
      WHERE f.master_regional_id IN (SELECT get_user_master_ids())
    )
  );

-- =====================================================
-- MASTER REGIONAL: Fix SELECT policy (remove auth.users dependency)
-- =====================================================
DROP POLICY IF EXISTS "Master regionais can view payment_boleto of their franchises" ON public.payment_boleto;

CREATE POLICY "Master regionais can view payment_boleto of their franchises"
  ON public.payment_boleto FOR SELECT
  USING (
    has_role(auth.uid(), 'master_regional'::app_role)
    AND franquia_id IN (
      SELECT f.id FROM franquias f
      WHERE f.master_regional_id IN (SELECT get_user_master_ids())
    )
  );

-- =====================================================
-- FRANQUIA: Fix UPDATE policy (use plural function)
-- =====================================================
DROP POLICY IF EXISTS "Franquias can update their own payment_boleto" ON public.payment_boleto;

CREATE POLICY "Franquias can update their own payment_boleto"
  ON public.payment_boleto FOR UPDATE
  USING (
    has_role(auth.uid(), 'franquia'::app_role)
    AND franquia_id IN (SELECT get_user_franquia_ids())
  );

SELECT 'payment_boleto RLS policies fixed (final)!' as status;
