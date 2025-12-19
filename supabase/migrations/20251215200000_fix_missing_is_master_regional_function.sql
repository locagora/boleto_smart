-- Fix missing is_master_regional() function and ensure super_admin policies work

-- Create the missing is_master_regional function
CREATE OR REPLACE FUNCTION public.is_master_regional()
RETURNS BOOLEAN AS $$
  SELECT EXISTS (
    SELECT 1
    FROM public.user_roles
    WHERE user_id = auth.uid()
      AND role = 'master_regional'
  )
$$ LANGUAGE sql SECURITY DEFINER STABLE;

-- Create is_franquia function for consistency
CREATE OR REPLACE FUNCTION public.is_franquia()
RETURNS BOOLEAN AS $$
  SELECT EXISTS (
    SELECT 1
    FROM public.user_roles
    WHERE user_id = auth.uid()
      AND role = 'franquia'
  )
$$ LANGUAGE sql SECURITY DEFINER STABLE;

-- Create is_super_admin function
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
-- Ensure super_admin policies exist for master_regionais
-- =====================================================
DROP POLICY IF EXISTS "Super admins can view all master regionais" ON master_regionais;
CREATE POLICY "Super admins can view all master regionais"
ON public.master_regionais
FOR SELECT
TO authenticated
USING (public.is_super_admin());

DROP POLICY IF EXISTS "Super admins can insert master regionais" ON master_regionais;
CREATE POLICY "Super admins can insert master regionais"
ON public.master_regionais
FOR INSERT
TO authenticated
WITH CHECK (public.is_super_admin());

DROP POLICY IF EXISTS "Super admins can update master regionais" ON master_regionais;
CREATE POLICY "Super admins can update master regionais"
ON public.master_regionais
FOR UPDATE
TO authenticated
USING (public.is_super_admin());

DROP POLICY IF EXISTS "Super admins can delete master regionais" ON master_regionais;
CREATE POLICY "Super admins can delete master regionais"
ON public.master_regionais
FOR DELETE
TO authenticated
USING (public.is_super_admin());

-- =====================================================
-- Ensure super_admin policies exist for franquias
-- =====================================================
DROP POLICY IF EXISTS "Super admins can view all franquias" ON franquias;
CREATE POLICY "Super admins can view all franquias"
ON public.franquias
FOR SELECT
TO authenticated
USING (public.is_super_admin());

DROP POLICY IF EXISTS "Super admins can insert franquias" ON franquias;
CREATE POLICY "Super admins can insert franquias"
ON public.franquias
FOR INSERT
TO authenticated
WITH CHECK (public.is_super_admin());

DROP POLICY IF EXISTS "Super admins can update franquias" ON franquias;
CREATE POLICY "Super admins can update franquias"
ON public.franquias
FOR UPDATE
TO authenticated
USING (public.is_super_admin());

DROP POLICY IF EXISTS "Super admins can delete franquias" ON franquias;
CREATE POLICY "Super admins can delete franquias"
ON public.franquias
FOR DELETE
TO authenticated
USING (public.is_super_admin());

-- =====================================================
-- Fix master_regional and franquia view policies
-- =====================================================

-- Drop existing policies that might have failed
DROP POLICY IF EXISTS "Master regional can view own franquias" ON franquias;
DROP POLICY IF EXISTS "Franquias can view own data" ON franquias;
DROP POLICY IF EXISTS "Master regional can view own data" ON master_regionais;

-- Recreate policies for master_regional to view franquias
CREATE POLICY "Master regional can view own franquias" ON franquias
  FOR SELECT USING (
    public.is_master_regional()
    AND master_regional_id IN (SELECT public.get_user_master_ids())
  );

-- Recreate policies for franquias to view their own data
CREATE POLICY "Franquias can view own data" ON franquias
  FOR SELECT USING (
    id IN (SELECT public.get_user_franquia_ids())
  );

-- Recreate policies for master_regional to view their own master data
CREATE POLICY "Master regional can view own data" ON master_regionais
  FOR SELECT USING (
    id IN (SELECT public.get_user_master_ids())
  );

-- Verification
SELECT 'RLS policies fixed!' as status;
