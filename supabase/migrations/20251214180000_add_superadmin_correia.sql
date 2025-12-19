-- Add super_admin role for correia.afelipe@mail.com
INSERT INTO public.user_roles (user_id, role)
SELECT id, 'super_admin'
FROM auth.users
WHERE email = 'correia.afelipe@mail.com'
ON CONFLICT (user_id, role) DO NOTHING;
