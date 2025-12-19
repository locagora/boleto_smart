-- Fix RLS Policies to use user_entities table instead of email comparison
-- This allows multiple users to be associated with the same master_regional

-- =====================================================
-- Helper functions to check user roles
-- =====================================================
CREATE OR REPLACE FUNCTION public.is_master_regional()
RETURNS BOOLEAN AS $$
  SELECT EXISTS (
    SELECT 1
    FROM public.user_roles
    WHERE user_id = auth.uid()
      AND role = 'master_regional'
  )
$$ LANGUAGE sql SECURITY DEFINER STABLE;

CREATE OR REPLACE FUNCTION public.is_franquia()
RETURNS BOOLEAN AS $$
  SELECT EXISTS (
    SELECT 1
    FROM public.user_roles
    WHERE user_id = auth.uid()
      AND role = 'franquia'
  )
$$ LANGUAGE sql SECURITY DEFINER STABLE;

CREATE OR REPLACE FUNCTION public.is_super_admin()
RETURNS BOOLEAN AS $$
  SELECT EXISTS (
    SELECT 1
    FROM public.user_roles
    WHERE user_id = auth.uid()
      AND role = 'super_admin'
  )
$$ LANGUAGE sql SECURITY DEFINER STABLE;

-- =====================================================
-- Helper function to get master_regional IDs for current user
-- Uses user_entities table
-- =====================================================
CREATE OR REPLACE FUNCTION public.get_user_master_ids()
RETURNS SETOF UUID AS $$
  SELECT entity_id
  FROM public.user_entities
  WHERE user_id = auth.uid()
    AND entity_type = 'master_regional'
  UNION
  -- Fallback: also check by email for backwards compatibility
  SELECT id
  FROM public.master_regionais
  WHERE email = auth.email()
$$ LANGUAGE sql SECURITY DEFINER STABLE;

-- Helper function to get franquia IDs for current user
CREATE OR REPLACE FUNCTION public.get_user_franquia_ids()
RETURNS SETOF UUID AS $$
  SELECT entity_id
  FROM public.user_entities
  WHERE user_id = auth.uid()
    AND entity_type = 'franquia'
  UNION
  -- Fallback: also check by email for backwards compatibility
  SELECT id
  FROM public.franquias
  WHERE email = auth.email()
$$ LANGUAGE sql SECURITY DEFINER STABLE;

-- =====================================================
-- FRANQUIAS TABLE - Update policies to use user_entities
-- =====================================================
DROP POLICY IF EXISTS "Master regional can view own franquias" ON franquias;
DROP POLICY IF EXISTS "Franquias can view own data" ON franquias;

-- Master regional can view their franquias (using user_entities)
CREATE POLICY "Master regional can view own franquias" ON franquias
  FOR SELECT USING (
    public.is_master_regional()
    AND master_regional_id IN (SELECT public.get_user_master_ids())
  );

-- Franquias can view their own data (using user_entities)
CREATE POLICY "Franquias can view own data" ON franquias
  FOR SELECT USING (
    id IN (SELECT public.get_user_franquia_ids())
  );

-- =====================================================
-- MASTER_REGIONAIS TABLE - Update policies
-- =====================================================
DROP POLICY IF EXISTS "Master regional can view own data" ON master_regionais;

-- Master regional can view their own data (using user_entities)
CREATE POLICY "Master regional can view own data" ON master_regionais
  FOR SELECT USING (
    id IN (SELECT public.get_user_master_ids())
  );

-- =====================================================
-- PAYMENTS TABLE - Update policies
-- =====================================================
DROP POLICY IF EXISTS "Master regional can view franchise payments" ON payments;
DROP POLICY IF EXISTS "Franquias can view own payments" ON payments;

-- Master regional can view payments of their franquias
CREATE POLICY "Master regional can view franchise payments" ON payments
  FOR SELECT USING (
    franquia_id IN (
      SELECT f.id FROM franquias f
      WHERE f.master_regional_id IN (SELECT public.get_user_master_ids())
    )
  );

-- Franquias can view their own payments
CREATE POLICY "Franquias can view own payments" ON payments
  FOR SELECT USING (
    franquia_id IN (SELECT public.get_user_franquia_ids())
  );

-- =====================================================
-- CUSTOMERS TABLE - Update policies
-- =====================================================
DROP POLICY IF EXISTS "Master regional can view franchise customers" ON customers;
DROP POLICY IF EXISTS "Franquias can view own customers" ON customers;

-- Master regional can view customers of their franquias
CREATE POLICY "Master regional can view franchise customers" ON customers
  FOR SELECT USING (
    franquia_id IN (
      SELECT f.id FROM franquias f
      WHERE f.master_regional_id IN (SELECT public.get_user_master_ids())
    )
  );

-- Franquias can view their own customers
CREATE POLICY "Franquias can view own customers" ON customers
  FOR SELECT USING (
    franquia_id IN (SELECT public.get_user_franquia_ids())
  );

-- =====================================================
-- Verify
-- =====================================================
SELECT 'RLS Policies updated to use user_entities!' as status;
