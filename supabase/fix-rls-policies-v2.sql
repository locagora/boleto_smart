-- Fix RLS Policies V2 - Avoiding Recursion
-- Run this in Supabase SQL Editor

-- =====================================================
-- STEP 1: Create helper functions with SECURITY DEFINER
-- These bypass RLS to avoid infinite recursion
-- =====================================================

-- Function to check if current user is super_admin
CREATE OR REPLACE FUNCTION public.is_super_admin()
RETURNS BOOLEAN AS $$
  SELECT EXISTS (
    SELECT 1 FROM public.user_roles
    WHERE user_id = auth.uid()
    AND role = 'super_admin'
  );
$$ LANGUAGE sql SECURITY DEFINER STABLE;

-- Function to check if current user is master_regional
CREATE OR REPLACE FUNCTION public.is_master_regional()
RETURNS BOOLEAN AS $$
  SELECT EXISTS (
    SELECT 1 FROM public.user_roles
    WHERE user_id = auth.uid()
    AND role = 'master_regional'
  );
$$ LANGUAGE sql SECURITY DEFINER STABLE;

-- Function to check if current user is franquia
CREATE OR REPLACE FUNCTION public.is_franquia()
RETURNS BOOLEAN AS $$
  SELECT EXISTS (
    SELECT 1 FROM public.user_roles
    WHERE user_id = auth.uid()
    AND role = 'franquia'
  );
$$ LANGUAGE sql SECURITY DEFINER STABLE;

-- =====================================================
-- STEP 2: USER_ROLES TABLE - Fix policies
-- =====================================================
DROP POLICY IF EXISTS "Users can view own roles" ON user_roles;
DROP POLICY IF EXISTS "Super admin can view all roles" ON user_roles;
DROP POLICY IF EXISTS "Super admin can insert roles" ON user_roles;
DROP POLICY IF EXISTS "Super admin can update roles" ON user_roles;
DROP POLICY IF EXISTS "Super admin can delete roles" ON user_roles;

-- Users can view their own roles (simple, no recursion)
CREATE POLICY "Users can view own roles" ON user_roles
  FOR SELECT USING (auth.uid() = user_id);

-- Super admin can view all roles (using function to avoid recursion)
CREATE POLICY "Super admin can view all roles" ON user_roles
  FOR SELECT USING (public.is_super_admin());

-- Super admin can insert roles
CREATE POLICY "Super admin can insert roles" ON user_roles
  FOR INSERT WITH CHECK (public.is_super_admin());

-- Super admin can update roles
CREATE POLICY "Super admin can update roles" ON user_roles
  FOR UPDATE USING (public.is_super_admin());

-- Super admin can delete roles
CREATE POLICY "Super admin can delete roles" ON user_roles
  FOR DELETE USING (public.is_super_admin());

-- =====================================================
-- STEP 3: FRANQUIAS TABLE
-- =====================================================
DROP POLICY IF EXISTS "Super admin full access to franquias" ON franquias;
DROP POLICY IF EXISTS "Master regional can view own franquias" ON franquias;
DROP POLICY IF EXISTS "Franquias can view own data" ON franquias;

-- Super admin can do everything
CREATE POLICY "Super admin full access to franquias" ON franquias
  FOR ALL USING (public.is_super_admin());

-- Master regional can view their franquias
CREATE POLICY "Master regional can view own franquias" ON franquias
  FOR SELECT USING (
    public.is_master_regional()
    AND master_regional_id IN (
      SELECT id FROM master_regionais WHERE email = auth.email()
    )
  );

-- Franquias can view their own data (by email)
CREATE POLICY "Franquias can view own data" ON franquias
  FOR SELECT USING (email = auth.email());

-- =====================================================
-- STEP 4: MASTER_REGIONAIS TABLE
-- =====================================================
DROP POLICY IF EXISTS "Super admin full access to master_regionais" ON master_regionais;
DROP POLICY IF EXISTS "Master regional can view own data" ON master_regionais;

-- Super admin can do everything
CREATE POLICY "Super admin full access to master_regionais" ON master_regionais
  FOR ALL USING (public.is_super_admin());

-- Master regional can view their own data
CREATE POLICY "Master regional can view own data" ON master_regionais
  FOR SELECT USING (email = auth.email());

-- =====================================================
-- STEP 5: PAYMENTS TABLE
-- =====================================================
DROP POLICY IF EXISTS "Super admin can view all payments" ON payments;
DROP POLICY IF EXISTS "Master regional can view franchise payments" ON payments;
DROP POLICY IF EXISTS "Franquias can view own payments" ON payments;

-- Super admin can view all payments
CREATE POLICY "Super admin can view all payments" ON payments
  FOR SELECT USING (public.is_super_admin());

-- Master regional can view payments of their franquias
CREATE POLICY "Master regional can view franchise payments" ON payments
  FOR SELECT USING (
    franquia_id IN (
      SELECT f.id FROM franquias f
      JOIN master_regionais mr ON f.master_regional_id = mr.id
      WHERE mr.email = auth.email()
    )
  );

-- Franquias can view their own payments
CREATE POLICY "Franquias can view own payments" ON payments
  FOR SELECT USING (
    franquia_id IN (
      SELECT id FROM franquias WHERE email = auth.email()
    )
  );

-- =====================================================
-- STEP 6: CUSTOMERS TABLE
-- =====================================================
DROP POLICY IF EXISTS "Super admin can view all customers" ON customers;
DROP POLICY IF EXISTS "Master regional can view franchise customers" ON customers;
DROP POLICY IF EXISTS "Franquias can view own customers" ON customers;

-- Super admin can view all customers
CREATE POLICY "Super admin can view all customers" ON customers
  FOR SELECT USING (public.is_super_admin());

-- Master regional can view customers of their franquias
CREATE POLICY "Master regional can view franchise customers" ON customers
  FOR SELECT USING (
    franquia_id IN (
      SELECT f.id FROM franquias f
      JOIN master_regionais mr ON f.master_regional_id = mr.id
      WHERE mr.email = auth.email()
    )
  );

-- Franquias can view their own customers
CREATE POLICY "Franquias can view own customers" ON customers
  FOR SELECT USING (
    franquia_id IN (
      SELECT id FROM franquias WHERE email = auth.email()
    )
  );

-- =====================================================
-- Verify the setup
-- =====================================================
SELECT 'RLS Policies V2 Updated Successfully!' as status;
