-- =====================================================
-- EXECUTE THIS SQL IN SUPABASE SQL EDITOR
-- =====================================================

-- 1. Create user_entities table if not exists
CREATE TABLE IF NOT EXISTS public.user_entities (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
    entity_type TEXT NOT NULL CHECK (entity_type IN ('master_regional', 'franquia')),
    entity_id UUID NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE (user_id, entity_type, entity_id)
);

-- Enable RLS
ALTER TABLE public.user_entities ENABLE ROW LEVEL SECURITY;

-- Create indexes
CREATE INDEX IF NOT EXISTS idx_user_entities_user_id ON public.user_entities(user_id);
CREATE INDEX IF NOT EXISTS idx_user_entities_entity ON public.user_entities(entity_type, entity_id);

-- 2. Create helper functions
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

CREATE OR REPLACE FUNCTION public.get_user_master_ids()
RETURNS SETOF UUID AS $$
  SELECT entity_id
  FROM public.user_entities
  WHERE user_id = auth.uid()
    AND entity_type = 'master_regional'
  UNION
  SELECT id
  FROM public.master_regionais
  WHERE email = auth.email()
$$ LANGUAGE sql SECURITY DEFINER STABLE;

CREATE OR REPLACE FUNCTION public.get_user_franquia_ids()
RETURNS SETOF UUID AS $$
  SELECT entity_id
  FROM public.user_entities
  WHERE user_id = auth.uid()
    AND entity_type = 'franquia'
  UNION
  SELECT id
  FROM public.franquias
  WHERE email = auth.email()
$$ LANGUAGE sql SECURITY DEFINER STABLE;

-- 3. RLS Policies for user_entities
DROP POLICY IF EXISTS "Users can view their own entity associations" ON public.user_entities;
CREATE POLICY "Users can view their own entity associations"
ON public.user_entities
FOR SELECT
TO authenticated
USING (auth.uid() = user_id);

DROP POLICY IF EXISTS "Super admins can view all entity associations" ON public.user_entities;
CREATE POLICY "Super admins can view all entity associations"
ON public.user_entities
FOR SELECT
TO authenticated
USING (public.is_super_admin());

DROP POLICY IF EXISTS "Super admins can manage entity associations" ON public.user_entities;
CREATE POLICY "Super admins can manage entity associations"
ON public.user_entities
FOR ALL
TO authenticated
USING (public.is_super_admin());

-- 4. Ensure super_admin policies for master_regionais
DROP POLICY IF EXISTS "Super admins can view all master regionais" ON master_regionais;
CREATE POLICY "Super admins can view all master regionais"
ON public.master_regionais
FOR SELECT
TO authenticated
USING (public.is_super_admin());

-- 5. Ensure super_admin policies for franquias
DROP POLICY IF EXISTS "Super admins can view all franquias" ON franquias;
CREATE POLICY "Super admins can view all franquias"
ON public.franquias
FOR SELECT
TO authenticated
USING (public.is_super_admin());

-- Verification
SELECT 'Setup complete!' as status;
SELECT COUNT(*) as user_entities_count FROM public.user_entities;
