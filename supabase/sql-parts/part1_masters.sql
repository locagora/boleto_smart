-- Migration: Import Masters and Franquias from franchisees.md
-- Generated at: 2025-12-15T19:18:39.956Z
-- Total Masters: 30
-- Total Franquias: 949

-- =====================================================
-- STEP 1: Create Master Regionais
-- =====================================================

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Barueri', 'Master Barueri', '00.000.000/0001-00', 'A definir', 'barueri@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Belo Horizonte', 'Master Belo Horizonte', '00.000.000/0002-00', 'A definir', 'belo-horizontee@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Bragança Paulista', 'Master Bragança Paulista', '00.000.000/0003-00', 'A definir', 'braganca-paulista@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Brasília', 'Master Brasília', '00.000.000/0004-00', 'A definir', 'brasilia@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Campinas', 'Master Campinas', '00.000.000/0005-00', 'A definir', 'campinas@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Canindé', 'Master Canindé', '00.000.000/0006-00', 'A definir', 'caninde@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Copacabana', 'Master Copacabana', '00.000.000/0007-00', 'A definir', 'copacabana@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Cuiabá', 'Master Cuiabá', '00.000.000/0008-00', 'A definir', 'cuiaba@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Curitiba', 'Master Curitiba', '00.000.000/0009-00', 'A definir', 'curitiba@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Feira de Santana', 'Master Feira de Santana', '00.000.000/0010-00', 'A definir', 'feira-de-santana@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Floramar', 'Master Floramar', '00.000.000/0011-00', 'A definir', 'floramar@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Floresta', 'Master Floresta', '00.000.000/0012-00', 'A definir', 'floresta@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Florianópolis', 'Master Florianópolis', '00.000.000/0013-00', 'A definir', 'florianpolis@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Fortaleza', 'Master Fortaleza', '00.000.000/0014-00', 'A definir', 'fortaleza@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Freguesia do Ó', 'Master Freguesia do Ó', '00.000.000/0015-00', 'A definir', 'freguesia-do-o@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Goiânia', 'Master Goiânia', '00.000.000/0016-00', 'A definir', 'goiania@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master João Pessoa', 'Master João Pessoa', '00.000.000/0017-00', 'A definir', 'joao-pessoa@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Joinville', 'Master Joinville', '00.000.000/0018-00', 'A definir', 'joinville@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Limão', 'Master Limão', '00.000.000/0019-00', 'A definir', 'limao@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Maceió', 'Master Maceió', '00.000.000/0020-00', 'A definir', 'maceio@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Manaus', 'Master Manaus', '00.000.000/0021-00', 'A definir', 'manaus@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Porto Alegre', 'Master Porto Alegre', '00.000.000/0022-00', 'A definir', 'porto-alegre@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Recife', 'Master Recife', '00.000.000/0023-00', 'A definir', 'recife@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Ribeirão Preto', 'Master Ribeirão Preto', '00.000.000/0024-00', 'A definir', 'ribeirao-preto@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Rio de Janeiro', 'Master Rio de Janeiro', '00.000.000/0025-00', 'A definir', 'rio-de-janeiro@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Salvador', 'Master Salvador', '00.000.000/0026-00', 'A definir', 'salvador@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master São Luís do Maranhão', 'Master São Luís do Maranhão', '00.000.000/0027-00', 'A definir', 'sao-luiz-do-maranhao@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Sorocaba', 'Master Sorocaba', '00.000.000/0028-00', 'A definir', 'sorocaba@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Tatuapé', 'Master Tatuapé', '00.000.000/0029-00', 'A definir', 'tatuape@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('Master Teresina', 'Master Teresina', '00.000.000/0030-00', 'A definir', 'teresina@master.placeholder.com', '')
ON CONFLICT (cnpj) DO NOTHING;


-- =====================================================

-- Verificar masters criados
SELECT 'Masters criados:' as info, COUNT(*) as total FROM public.master_regionais;
