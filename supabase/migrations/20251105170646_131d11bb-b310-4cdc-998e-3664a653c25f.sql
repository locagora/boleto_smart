-- Add email and telefone columns to master_regionais table
ALTER TABLE public.master_regionais
ADD COLUMN email text NOT NULL DEFAULT '',
ADD COLUMN telefone text NOT NULL DEFAULT '';

-- Add email and telefone columns to franquias table
ALTER TABLE public.franquias
ADD COLUMN email text NOT NULL DEFAULT '',
ADD COLUMN telefone text NOT NULL DEFAULT '';

-- Add unique constraints for emails to prevent duplicates
ALTER TABLE public.master_regionais
ADD CONSTRAINT master_regionais_email_unique UNIQUE (email);

ALTER TABLE public.franquias
ADD CONSTRAINT franquias_email_unique UNIQUE (email);