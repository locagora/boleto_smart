-- Fix user_entities RLS policy for INSERT operations
-- The previous policy used FOR ALL with USING but INSERT requires WITH CHECK

-- Drop the existing policy
DROP POLICY IF EXISTS "Super admins can manage entity associations" ON public.user_entities;

-- Create separate policies for each operation with proper checks

-- Super admins can SELECT all entity associations
CREATE POLICY "Super admins can select entity associations"
ON public.user_entities
FOR SELECT
TO authenticated
USING (
    EXISTS (
        SELECT 1 FROM public.user_roles
        WHERE user_id = auth.uid() AND role = 'super_admin'
    )
);

-- Super admins can INSERT entity associations
CREATE POLICY "Super admins can insert entity associations"
ON public.user_entities
FOR INSERT
TO authenticated
WITH CHECK (
    EXISTS (
        SELECT 1 FROM public.user_roles
        WHERE user_id = auth.uid() AND role = 'super_admin'
    )
);

-- Super admins can UPDATE entity associations
CREATE POLICY "Super admins can update entity associations"
ON public.user_entities
FOR UPDATE
TO authenticated
USING (
    EXISTS (
        SELECT 1 FROM public.user_roles
        WHERE user_id = auth.uid() AND role = 'super_admin'
    )
)
WITH CHECK (
    EXISTS (
        SELECT 1 FROM public.user_roles
        WHERE user_id = auth.uid() AND role = 'super_admin'
    )
);

-- Super admins can DELETE entity associations
CREATE POLICY "Super admins can delete entity associations"
ON public.user_entities
FOR DELETE
TO authenticated
USING (
    EXISTS (
        SELECT 1 FROM public.user_roles
        WHERE user_id = auth.uid() AND role = 'super_admin'
    )
);

-- Master regionais can INSERT associations for their franchises
CREATE POLICY "Master regionals can insert franchise associations"
ON public.user_entities
FOR INSERT
TO authenticated
WITH CHECK (
    entity_type = 'franquia' AND
    EXISTS (
        SELECT 1 FROM public.franquias f
        JOIN public.user_entities ue ON ue.entity_type = 'master_regional' AND ue.entity_id = f.master_regional_id
        WHERE f.id = entity_id AND ue.user_id = auth.uid()
    )
);

SELECT 'user_entities INSERT policy fixed!' as status;
