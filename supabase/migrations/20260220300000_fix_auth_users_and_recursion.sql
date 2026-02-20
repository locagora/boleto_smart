-- ============================================================
-- FIX: Remove policies that directly access auth.users
-- and fix infinite recursion in user_entities
-- ============================================================

-- =====================================================
-- 1. FRANQUIAS: Remove policies with direct auth.users access
-- These cause "permission denied for table users" (42501)
-- =====================================================

-- From migration 20251214062633 - DIRECTLY accesses auth.users in policy body
DROP POLICY IF EXISTS "Franquias can view their own data by email" ON public.franquias;
DROP POLICY IF EXISTS "Franquias can update their own data" ON public.franquias;

-- From migration 20251210212457 - old policies (use get_user_master_regional_id which accesses auth.users)
-- These are replaced by newer "Master regional can view own franquias" policy
DROP POLICY IF EXISTS "Master regionais can view their franquias" ON public.franquias;
DROP POLICY IF EXISTS "Master regionais can insert their franquias" ON public.franquias;
DROP POLICY IF EXISTS "Master regionais can update their franquias" ON public.franquias;
DROP POLICY IF EXISTS "Master regionais can delete their franquias" ON public.franquias;

-- =====================================================
-- 2. MASTER_REGIONAIS: Remove old policy with auth.users function
-- =====================================================

-- From migration 20251210212457 - replaced by "Master regional can view own data"
DROP POLICY IF EXISTS "Master regionais can view their own record" ON public.master_regionais;

-- =====================================================
-- 3. USER_ENTITIES: Fix infinite recursion (42P17)
-- The self-referencing policy causes infinite loop
-- =====================================================

-- From migration 20251214200000 - joins user_entities within itself causing recursion
DROP POLICY IF EXISTS "Master regionals can view their franchise associations" ON public.user_entities;

-- =====================================================
-- 4. Ensure franquias has INSERT/UPDATE/DELETE for master_regional
-- (needed after dropping old policies from 20251210212457)
-- =====================================================

DROP POLICY IF EXISTS "Master regional can insert own franquias" ON public.franquias;
CREATE POLICY "Master regional can insert own franquias" ON public.franquias
  FOR INSERT
  TO authenticated
  WITH CHECK (
    master_regional_id IN (SELECT public.get_user_master_ids())
  );

DROP POLICY IF EXISTS "Master regional can update own franquias" ON public.franquias;
CREATE POLICY "Master regional can update own franquias" ON public.franquias
  FOR UPDATE
  TO authenticated
  USING (
    master_regional_id IN (SELECT public.get_user_master_ids())
  );

DROP POLICY IF EXISTS "Master regional can delete own franquias" ON public.franquias;
CREATE POLICY "Master regional can delete own franquias" ON public.franquias
  FOR DELETE
  TO authenticated
  USING (
    master_regional_id IN (SELECT public.get_user_master_ids())
  );

-- =====================================================
-- 5. Ensure franquias UPDATE for franquia role
-- (needed after dropping "Franquias can update their own data")
-- =====================================================

DROP POLICY IF EXISTS "Franquias can update own data" ON public.franquias;
CREATE POLICY "Franquias can update own data" ON public.franquias
  FOR UPDATE
  TO authenticated
  USING (
    id IN (SELECT public.get_user_franquia_ids())
  );

-- =====================================================
-- Verify
-- =====================================================
SELECT 'Fixed auth.users access and infinite recursion!' as status;
