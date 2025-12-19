-- Add token column to franquias table
ALTER TABLE public.franquias ADD COLUMN IF NOT EXISTS token text;