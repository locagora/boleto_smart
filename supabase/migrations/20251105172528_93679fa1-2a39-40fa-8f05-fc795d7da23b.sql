-- Adicionar roles de master_regional e franquia ao enum app_role
ALTER TYPE public.app_role ADD VALUE IF NOT EXISTS 'master_regional';
ALTER TYPE public.app_role ADD VALUE IF NOT EXISTS 'franquia';