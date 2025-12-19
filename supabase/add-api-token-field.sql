-- Add asaas_token field to franquias table
-- Run this in Supabase SQL Editor

-- Add the asaas_token column (for storing the Asaas API token)
ALTER TABLE public.franquias
ADD COLUMN IF NOT EXISTS asaas_token TEXT;

-- Update RLS policy to allow franquias to update their own webhook and asaas_token
DROP POLICY IF EXISTS "Franquias can update own data" ON franquias;

CREATE POLICY "Franquias can update own data" ON franquias
  FOR UPDATE USING (email = auth.email())
  WITH CHECK (email = auth.email());

SELECT 'Asaas Token field added successfully!' as status;
