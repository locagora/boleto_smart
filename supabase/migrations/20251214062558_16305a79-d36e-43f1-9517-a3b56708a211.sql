-- Add 'ativo' column to franquias table with default value false
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public'
    AND table_name = 'franquias'
    AND column_name = 'ativo'
  ) THEN
    ALTER TABLE public.franquias
    ADD COLUMN ativo boolean NOT NULL DEFAULT false;
  END IF;
END $$;