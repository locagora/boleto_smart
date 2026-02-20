-- ============================================================
-- CLEANUP: Remove old RLS policies that use broken functions
-- (get_user_franquia_id and is_master_regional_for_franquia)
-- These access auth.users directly, causing "permission denied" errors
-- ============================================================

-- =====================================================
-- PAYMENTS TABLE: Drop ALL old policies with wrong names
-- =====================================================

-- Old policies from 20251105215236 (use broken functions accessing auth.users)
DROP POLICY IF EXISTS "Franquias can view their own payments" ON public.payments;
DROP POLICY IF EXISTS "Master regionais can view payments of their franchises" ON public.payments;
DROP POLICY IF EXISTS "Franquias can insert their own payments" ON public.payments;
DROP POLICY IF EXISTS "Franquias can update their own payments" ON public.payments;

-- New policies from 20251215000000 (drop to recreate cleanly)
DROP POLICY IF EXISTS "Master regional can view franchise payments" ON public.payments;
DROP POLICY IF EXISTS "Franquias can view own payments" ON public.payments;

-- =====================================================
-- PAYMENTS TABLE: Recreate all non-admin policies
-- =====================================================

-- Master regional can view payments of their franquias
CREATE POLICY "Master regional can view franchise payments" ON public.payments
  FOR SELECT
  TO authenticated
  USING (
    franquia_id IN (
      SELECT f.id FROM public.franquias f
      WHERE f.master_regional_id IN (SELECT public.get_user_master_ids())
    )
  );

-- Franquias can view their own payments
CREATE POLICY "Franquias can view own payments" ON public.payments
  FOR SELECT
  TO authenticated
  USING (
    franquia_id IN (SELECT public.get_user_franquia_ids())
  );

-- Master regional can insert payments for their franquias
DROP POLICY IF EXISTS "Master regional can insert franchise payments" ON public.payments;
CREATE POLICY "Master regional can insert franchise payments" ON public.payments
  FOR INSERT
  TO authenticated
  WITH CHECK (
    franquia_id IN (
      SELECT f.id FROM public.franquias f
      WHERE f.master_regional_id IN (SELECT public.get_user_master_ids())
    )
  );

-- Franquias can insert their own payments
DROP POLICY IF EXISTS "Franquias can insert own payments" ON public.payments;
CREATE POLICY "Franquias can insert own payments" ON public.payments
  FOR INSERT
  TO authenticated
  WITH CHECK (
    franquia_id IN (SELECT public.get_user_franquia_ids())
  );

-- Master regional can update payments of their franquias
DROP POLICY IF EXISTS "Master regional can update franchise payments" ON public.payments;
CREATE POLICY "Master regional can update franchise payments" ON public.payments
  FOR UPDATE
  TO authenticated
  USING (
    franquia_id IN (
      SELECT f.id FROM public.franquias f
      WHERE f.master_regional_id IN (SELECT public.get_user_master_ids())
    )
  );

-- Franquias can update their own payments
DROP POLICY IF EXISTS "Franquias can update own payments" ON public.payments;
CREATE POLICY "Franquias can update own payments" ON public.payments
  FOR UPDATE
  TO authenticated
  USING (
    franquia_id IN (SELECT public.get_user_franquia_ids())
  );

-- =====================================================
-- CUSTOMERS TABLE: Drop ALL old policies with wrong names
-- =====================================================

-- Old policies from 20251105215236 (use broken functions accessing auth.users)
DROP POLICY IF EXISTS "Franquias can view their own customers" ON public.customers;
DROP POLICY IF EXISTS "Master regionais can view customers of their franchises" ON public.customers;
DROP POLICY IF EXISTS "Franquias can insert their own customers" ON public.customers;
DROP POLICY IF EXISTS "Franquias can update their own customers" ON public.customers;

-- New policies from 20251215000000 (drop to recreate cleanly)
DROP POLICY IF EXISTS "Master regional can view franchise customers" ON public.customers;
DROP POLICY IF EXISTS "Franquias can view own customers" ON public.customers;

-- =====================================================
-- CUSTOMERS TABLE: Recreate all non-admin policies
-- =====================================================

-- Master regional can view customers of their franquias
CREATE POLICY "Master regional can view franchise customers" ON public.customers
  FOR SELECT
  TO authenticated
  USING (
    franquia_id IN (
      SELECT f.id FROM public.franquias f
      WHERE f.master_regional_id IN (SELECT public.get_user_master_ids())
    )
  );

-- Franquias can view their own customers
CREATE POLICY "Franquias can view own customers" ON public.customers
  FOR SELECT
  TO authenticated
  USING (
    franquia_id IN (SELECT public.get_user_franquia_ids())
  );

-- Master regional can insert customers for their franquias
DROP POLICY IF EXISTS "Master regional can insert franchise customers" ON public.customers;
CREATE POLICY "Master regional can insert franchise customers" ON public.customers
  FOR INSERT
  TO authenticated
  WITH CHECK (
    franquia_id IN (
      SELECT f.id FROM public.franquias f
      WHERE f.master_regional_id IN (SELECT public.get_user_master_ids())
    )
  );

-- Franquias can insert their own customers
DROP POLICY IF EXISTS "Franquias can insert own customers" ON public.customers;
CREATE POLICY "Franquias can insert own customers" ON public.customers
  FOR INSERT
  TO authenticated
  WITH CHECK (
    franquia_id IN (SELECT public.get_user_franquia_ids())
  );

-- Master regional can update customers of their franquias
DROP POLICY IF EXISTS "Master regional can update franchise customers" ON public.customers;
CREATE POLICY "Master regional can update franchise customers" ON public.customers
  FOR UPDATE
  TO authenticated
  USING (
    franquia_id IN (
      SELECT f.id FROM public.franquias f
      WHERE f.master_regional_id IN (SELECT public.get_user_master_ids())
    )
  );

-- Franquias can update their own customers
DROP POLICY IF EXISTS "Franquias can update own customers" ON public.customers;
CREATE POLICY "Franquias can update own customers" ON public.customers
  FOR UPDATE
  TO authenticated
  USING (
    franquia_id IN (SELECT public.get_user_franquia_ids())
  );

-- =====================================================
-- FRANQUIAS TABLE: Ensure proper policies exist
-- =====================================================

-- Drop and recreate to ensure consistency
DROP POLICY IF EXISTS "Master regional can view own franquias" ON public.franquias;
CREATE POLICY "Master regional can view own franquias" ON public.franquias
  FOR SELECT
  TO authenticated
  USING (
    master_regional_id IN (SELECT public.get_user_master_ids())
  );

DROP POLICY IF EXISTS "Franquias can view own data" ON public.franquias;
CREATE POLICY "Franquias can view own data" ON public.franquias
  FOR SELECT
  TO authenticated
  USING (
    id IN (SELECT public.get_user_franquia_ids())
  );

-- =====================================================
-- Verify
-- =====================================================
SELECT 'Payments & Customers RLS policies cleaned up!' as status;
