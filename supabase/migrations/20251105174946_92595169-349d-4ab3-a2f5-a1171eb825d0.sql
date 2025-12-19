-- Drop existing policies to recreate them properly
DROP POLICY IF EXISTS "Super admins can manage roles" ON public.user_roles;
DROP POLICY IF EXISTS "Super admins can view all roles" ON public.user_roles;

-- Allow super admins to view all roles
CREATE POLICY "Super admins can view all roles"
ON public.user_roles
FOR SELECT
USING (has_role(auth.uid(), 'super_admin'));

-- Allow super admins to insert roles for any user
CREATE POLICY "Super admins can insert roles"
ON public.user_roles
FOR INSERT
WITH CHECK (has_role(auth.uid(), 'super_admin'));

-- Allow super admins to update roles
CREATE POLICY "Super admins can update roles"
ON public.user_roles
FOR UPDATE
USING (has_role(auth.uid(), 'super_admin'));

-- Allow super admins to delete roles
CREATE POLICY "Super admins can delete roles"
ON public.user_roles
FOR DELETE
USING (has_role(auth.uid(), 'super_admin'));