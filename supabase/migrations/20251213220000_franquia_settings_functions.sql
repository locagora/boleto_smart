-- Ensure token column exists
ALTER TABLE public.franquias ADD COLUMN IF NOT EXISTS token text;

-- Function to get franquia data for current user (bypasses RLS)
CREATE OR REPLACE FUNCTION public.get_my_franquia_data()
RETURNS TABLE (
  out_id uuid,
  out_nome text,
  out_email text,
  out_webhook text,
  out_token text
)
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT id, nome, email, webhook, token
  FROM franquias
  WHERE email = (SELECT email FROM auth.users WHERE id = auth.uid())
  LIMIT 1;
$$;

-- Function to update franquia settings for current user (bypasses RLS)
CREATE OR REPLACE FUNCTION public.update_my_franquia_settings(
  p_webhook text DEFAULT NULL,
  p_token text DEFAULT NULL
)
RETURNS boolean
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_franquia_id uuid;
BEGIN
  -- Get the franquia ID for current user
  SELECT id INTO v_franquia_id
  FROM franquias
  WHERE email = (SELECT email FROM auth.users WHERE id = auth.uid());

  IF v_franquia_id IS NULL THEN
    RETURN false;
  END IF;

  -- Update the franquia settings
  UPDATE franquias
  SET webhook = p_webhook,
      token = p_token,
      updated_at = NOW()
  WHERE id = v_franquia_id;

  RETURN true;
END;
$$;
