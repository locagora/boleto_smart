-- Fix RLS Policies for Franquia Users
-- Run this in Supabase SQL Editor

-- First, let's drop existing policies and recreate them properly

-- =====================================================
-- USER_ROLES TABLE
-- =====================================================
DROP POLICY IF EXISTS "Users can view own roles" ON user_roles;
DROP POLICY IF EXISTS "Super admin can manage all roles" ON user_roles;

-- Users can view their own roles
CREATE POLICY "Users can view own roles" ON user_roles
  FOR SELECT USING (auth.uid() = user_id);

-- Super admin can view all roles (need to check via subquery)
CREATE POLICY "Super admin can view all roles" ON user_roles
  FOR SELECT USING (
    EXISTS (
      SELECT 1 FROM user_roles ur
      WHERE ur.user_id = auth.uid()
      AND ur.role = 'super_admin'
    )
  );

-- Super admin can insert roles
CREATE POLICY "Super admin can insert roles" ON user_roles
  FOR INSERT WITH CHECK (
    EXISTS (
      SELECT 1 FROM user_roles ur
      WHERE ur.user_id = auth.uid()
      AND ur.role = 'super_admin'
    )
  );

-- Super admin can update roles
CREATE POLICY "Super admin can update roles" ON user_roles
  FOR UPDATE USING (
    EXISTS (
      SELECT 1 FROM user_roles ur
      WHERE ur.user_id = auth.uid()
      AND ur.role = 'super_admin'
    )
  );

-- Super admin can delete roles
CREATE POLICY "Super admin can delete roles" ON user_roles
  FOR DELETE USING (
    EXISTS (
      SELECT 1 FROM user_roles ur
      WHERE ur.user_id = auth.uid()
      AND ur.role = 'super_admin'
    )
  );

-- =====================================================
-- FRANQUIAS TABLE
-- =====================================================
DROP POLICY IF EXISTS "Super admin full access to franquias" ON franquias;
DROP POLICY IF EXISTS "Master regional can view own franquias" ON franquias;
DROP POLICY IF EXISTS "Franquias can view own data" ON franquias;

-- Super admin can do everything
CREATE POLICY "Super admin full access to franquias" ON franquias
  FOR ALL USING (
    EXISTS (
      SELECT 1 FROM user_roles
      WHERE user_id = auth.uid()
      AND role = 'super_admin'
    )
  );

-- Master regional can view and manage their franquias
CREATE POLICY "Master regional can view own franquias" ON franquias
  FOR SELECT USING (
    EXISTS (
      SELECT 1 FROM user_roles
      WHERE user_id = auth.uid()
      AND role = 'master_regional'
    )
    AND master_regional_id IN (
      SELECT id FROM master_regionais
      WHERE email = auth.email()
    )
  );

-- Franquias can view their own data (by matching email)
CREATE POLICY "Franquias can view own data" ON franquias
  FOR SELECT USING (
    email = auth.email()
  );

-- =====================================================
-- MASTER_REGIONAIS TABLE
-- =====================================================
DROP POLICY IF EXISTS "Super admin full access to master_regionais" ON master_regionais;
DROP POLICY IF EXISTS "Master regional can view own data" ON master_regionais;

-- Super admin can do everything
CREATE POLICY "Super admin full access to master_regionais" ON master_regionais
  FOR ALL USING (
    EXISTS (
      SELECT 1 FROM user_roles
      WHERE user_id = auth.uid()
      AND role = 'super_admin'
    )
  );

-- Master regional can view their own data
CREATE POLICY "Master regional can view own data" ON master_regionais
  FOR SELECT USING (
    email = auth.email()
  );

-- =====================================================
-- PAYMENTS TABLE
-- =====================================================
DROP POLICY IF EXISTS "Super admin can view all payments" ON payments;
DROP POLICY IF EXISTS "Master regional can view franchise payments" ON payments;
DROP POLICY IF EXISTS "Franquias can view own payments" ON payments;

-- Super admin can view all payments
CREATE POLICY "Super admin can view all payments" ON payments
  FOR SELECT USING (
    EXISTS (
      SELECT 1 FROM user_roles
      WHERE user_id = auth.uid()
      AND role = 'super_admin'
    )
  );

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
-- CUSTOMERS TABLE
-- =====================================================
DROP POLICY IF EXISTS "Super admin can view all customers" ON customers;
DROP POLICY IF EXISTS "Master regional can view franchise customers" ON customers;
DROP POLICY IF EXISTS "Franquias can view own customers" ON customers;

-- Super admin can view all customers
CREATE POLICY "Super admin can view all customers" ON customers
  FOR SELECT USING (
    EXISTS (
      SELECT 1 FROM user_roles
      WHERE user_id = auth.uid()
      AND role = 'super_admin'
    )
  );

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
SELECT 'RLS Policies Updated Successfully!' as status;
