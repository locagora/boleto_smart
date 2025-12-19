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
-- STEP 2: Create Franquias
-- =====================================================

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOURO MOTOS LTDA',
  'MOTOURO MOTOS LTDA',
  '58.616.594/0001-40',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua AV BARATA RIBEIRO, N¬∫ 236',
  'pedro@lirafomento.com.br',
  '21965540637',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Gav locadora Ltda',
  'Gav locadora Ltda',
  '57.712.730/0001-32',
  'A definir',
  'gilvanvalerio@gmail.com',
  '11992746120',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTHORA LOCADORA LTDA',
  'MOTHORA LOCADORA LTDA',
  '63.222.787/0001-56',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AV MIGUEL SUTIL, N¬∫ 11990',
  'mothoralocadora@hotmail.com',
  '86999914949',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PHZ LOCADORA LTDA',
  'PHZ LOCADORA LTDA',
  '6206343100015',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua R ANNE FRANK, N¬∫ 3687',
  'phzlocadora@terra.com.br',
  '45999153746',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'W2B LOCACOES LTDA',
  'W2B LOCACOES LTDA',
  '60.050.583/0001-97',
  'A definir',
  'wwillianguimaraes@gmail.com',
  '11956055757',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VINI LOCACOES E SERVICOS LTDA',
  'VINI LOCACOES E SERVICOS LTDA',
  '60.514.014/0001-55',
  'A definir',
  '4796904727',
  '635810948',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SOLUTIONS LOCADORA VEICULOS SEM CONDUTOR LTDA',
  'SOLUTIONS LOCADORA VEICULOS SEM CONDUTOR LTDA',
  '61.148.316/0001-10',
  'PORTO ALEGRE, RS. Bairro SAO GERALDO, rua AVENIDA PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'loconesolutions@gmail.com',
  '31987612810',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LETAMOTOS LOCADORA LTDA',
  'LETAMOTOS LOCADORA LTDA',
  '58.034.733/0001-27',
  'R. Barata Ribeiro, 236 - Copacabana',
  'lepradol@hotmail.com',
  '3599232015',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCNUNES LOCADORA LTDA',
  'LOCNUNES LOCADORA LTDA',
  '57.237.346/0001-25',
  'PAULO DE FARIA, SP. Bairro CANIND√â, rua AV CRUZEIRO DO SUL, N¬∫ 130',
  'locnuneslocadora@gmail.com',
  '87999172300',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA BAHIA LOCACAO DE VEICULOS LTDA',
  'LOCAGORA BAHIA LOCACAO DE VEICULOS LTDA',
  '63.315.991/0001-11',
  'RUA CASTRO ALVES , N443 , SERRARIA BRASIL - FEIRA DE SANTANA',
  'wiliaquison@hotmail.com',
  '75982806883',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Feira de Santana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCBLESS LTDA',
  'LOCBLESS LTDA',
  '58.018.304/0001-66',
  'A definir',
  'marko.stos2010@gmail.com',
  '31999819239',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOCA RENT TREPI LOCADORA LTDA',
  'MOTOCA RENT TREPI LOCADORA LTDA',
  '60.613.673/0001-49',
  'TERESINA, PI. Bairro Tabuleta, rua Avenida Miguel Rosa, N¬∫ 7500',
  'motocarent@gmail.com',
  '21980400806',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Teresina'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ONIRA LOCACAO DE AUTOMOVEIS SEM CONDUTOR E COMERCIO LTDA',
  'ONIRA LOCACAO DE AUTOMOVEIS SEM CONDUTOR E COMERCIO LTDA',
  '58.346.137/0001-82',
  'A definir',
  'lucianafiale@gmail.com',
  '11982415140',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JF BRAZAO EMPREENDIMENTOS LTDA',
  'JF BRAZAO EMPREENDIMENTOS LTDA',
  '59.785.333/0001-16',
  'A definir',
  'fernandogcardoso28@gmail.com',
  '11947237312',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'R3 LOCADORA DE MOTOS E VEICULOS LTDA',
  'R3 LOCADORA DE MOTOS E VEICULOS LTDA',
  '62.881.279/0001-17',
  'CAMPINAS, SP. Bairro JARDIM BRASIL, rua AV BRASIL, N¬∫ 807',
  'ribeirorrfloripa@gmail.com',
  '34669987939',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Pedro Paulo Duarte J√∫nior  - SEDE - SP.',
  'Pedro Paulo Duarte J√∫nior  - SEDE - SP.',
  '55.588.700/0001-30',
  'A definir',
  'juniordurep@gmail.com',
  '47996520151',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BETA2B SOLUCOES INTELIGENTES LTDA',
  'BETA2B SOLUCOES INTELIGENTES LTDA',
  '60.277.784/0001-21',
  'A definir',
  'contato.beta2b@gmail.com',
  '48991611666',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MARCELO DE ARAG√ÉO PEREIRA E SILVA (BELO HORIZONTE - MG)',
  'MARCELO DE ARAG√ÉO PEREIRA E SILVA (BELO HORIZONTE - MG)',
  '52.272.843/0001-40',
  'BELO HORIZONTE, MG. Bairro Floresta, rua Rua Marechal Deodoro , N¬∫ 293',
  'zaragao@gmail.com',
  '31986410006',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Belo Horizonte'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOS MOTTA ALUGUEL E COMPRA DE MOTOS LTDA',
  'MOTOS MOTTA ALUGUEL E COMPRA DE MOTOS LTDA',
  '58.542.490/0001-38',
  'A definir',
  'marcopaulomg@gmail.com',
  '31995412355',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'D & M LOCADORA DE VEICULOS LTDA',
  'D & M LOCADORA DE VEICULOS LTDA',
  '59.310.347/0001-83',
  'SALVADOR, BA. Bairro Boca do Rio, rua Mestre Manual, N¬∫ 149',
  'matheus.antonio.melo@hotmail.com',
  '71999501818',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ABDALA LEANDR MOTO FACIL LTDA',
  'ABDALA LEANDR MOTO FACIL LTDA',
  '57.691.815/0001-81',
  'R. Barata Ribeiro, 236 - Copacabana',
  'abdalacard@yahoo.com.br',
  '21999255318',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'COPA MOTOS LTDA',
  'COPA MOTOS LTDA',
  '57.156.279/0001-14',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Barata Ribeiro, N¬∫ 236',
  'cbarreiros@gmail.com',
  '21973555561',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'K2V LOCACAO DE VEICULOS LTDA',
  'K2V LOCACAO DE VEICULOS LTDA',
  '62.945.117/0001-03',
  'CAMPINAS, SP. Bairro JARDIM BRASIL, rua AV BRASIL, N¬∫ 807',
  'dsbaptistuta@hotmail.com',
  '11999344241',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JV LOCAGORA LTDA',
  'JV LOCAGORA LTDA',
  '60.660.710/0001-70',
  'A definir',
  'jvlocagora@gmail.com',
  '6596895333',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ACS LOCADORA E SERVICOS LTDA',
  'ACS LOCADORA E SERVICOS LTDA',
  '60.359.753/0001-10',
  'A definir',
  'andercosme@uol.com.br',
  '22988544922',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ITTEROM LOCACOES LTDA',
  'ITTEROM LOCACOES LTDA',
  '62.431.818/0001-16',
  'A definir',
  'marcosantonio.moretti@gmail.com',
  '11991904452',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'HARDEN MOTORS LTDA',
  'HARDEN MOTORS LTDA',
  '6184044400012',
  'CURITIBA, PR. Bairro CAMPINA DO SIQUEIRA, rua R MAJOR HEITOR',
  'financeiro@winechopp.com.br',
  '4191572207',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MTM LOCACOES LTDA',
  'MTM LOCACOES LTDA',
  '6276311100010',
  'CUIAB√Å, MT. Bairro Cidade alta, rua Av. Miguel Sutil, N¬∫ 119990',
  'mmeirellesloc@gmail.com',
  '4888482846',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CRICKET LOCADORA LTDA',
  'CRICKET LOCADORA LTDA',
  '61.357.686/0001-67',
  'PORTO ALEGRE, RS. Bairro SAO GERALDO, rua AVENIDA PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'thiagomoura@me.com',
  '11999993144',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JHON LOCADORA LTDA',
  'JHON LOCADORA LTDA',
  '59.793.251/0001-13',
  'PORTO ALEGRE, RS. Bairro SAO GERALDO, rua AVENIDA PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'joaoalcionesf@gmail.com',
  '51999731024',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Locave Loca√ß√£o de Ve√≠culos Ltda',
  'Locave Loca√ß√£o de Ve√≠culos Ltda',
  '57.353.299/0001-85',
  'A definir',
  'jafferson.celani@hotmail.com',
  '83999966611',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FARIAS LOCAGORA LTDA',
  'FARIAS LOCAGORA LTDA',
  '62.547.323/0001-57',
  'MANAUS, AM. Bairro SAO FRANCISCO, rua RUA SOBRINHO MARANHAO, N¬∫ 310',
  'vwfashionstore@gmail.com',
  '11977260892',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Manaus'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FERLOCAR LTDA',
  'FERLOCAR LTDA',
  '61.198.216/0001-06',
  'PORTO ALEGRE, RS. Bairro S√ÉO GERALDO, rua AV PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'fernandonova.so@hotmail.com',
  '21970354521',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Andr√© Luiz Balarin  - Loca√ß√£o Motos Pinda Ltda',
  'Andr√© Luiz Balarin  - Loca√ß√£o Motos Pinda Ltda',
  '57.371.529/0001-39',
  'PAULO DE FARIA, SP. Bairro Lim√£o, rua Av. Prof. Celestino Bourroul, , N¬∫ 581',
  'locmotos@yahoo.com',
  '12991628875',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'HENRILOC  LTDA',
  'HENRILOC  LTDA',
  '61.585.091/0001-69',
  'A definir',
  'locagorahenrique@gmail.com',
  '31992850290',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LMN LOCACOES E SERVICOS LTDA',
  'LMN LOCACOES E SERVICOS LTDA',
  '62.020.869/0001-55',
  'A definir',
  'martimianonery@gmail.com',
  '3598506656',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CARBON MOTOS NORDESTE LTDA.',
  'CARBON MOTOS NORDESTE LTDA.',
  '61.549.670/0001-09',
  'JO√ÉO PESSOA, PB. Bairro JAGUARIBE, rua AV CAPIT√ÉO JOS√â PESSOA, N¬∫ 379',
  'moab1901@gmail.com',
  '92999895783',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MELVI LOCACOES LTDA',
  'MELVI LOCACOES LTDA',
  '61.645.005/0001-66',
  'R. Barata Ribeiro, 236 - Copacabana',
  'luizccarvalho1962@gmail.com',
  '11991606886',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOCONECT LTDA',
  'MOTOCONECT LTDA',
  '60.220.502/0001-50',
  'S√ÉO PAULO, SP. Bairro CHACARA SANTO ANTONIO, rua NOVA JERUSALEM, N¬∫ 807',
  'zanettimarcelo78@gmail.com',
  '11976667926',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'KMP MOTOS LTDA',
  'KMP MOTOS LTDA',
  '61.159.449/0001-91',
  'JO√ÉO PESSOA, PB. Bairro ESTADOS, rua AV PRESIDENTE EPIT√ÅCIO PESSOA, N¬∫ 1251',
  'kmpmotosjp@gmail.com',
  '31999311140',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RAFRAN GOIANIA LTDA',
  'RAFRAN GOIANIA LTDA',
  '62.587.565/0001-74',
  'Bairro JARDIM AM√âRICA, rua AV T9, N¬∫ 2840',
  'francine9322@instagram.com',
  '6192228135',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAMOTO BRASILIA LTDA',
  'LOCAMOTO BRASILIA LTDA',
  '59.073.624/0001-81',
  'A definir',
  'locamotosbrasilia@gmail.com',
  '51986218909',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'J R O SOUZA',
  'J R O SOUZA',
  '60.229.584/0001-01',
  'A definir',
  '79981051668',
  '40571815553',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'HEART LOCADORA LTDA',
  'HEART LOCADORA LTDA',
  '58.391.352/0001-03',
  'A definir',
  'drmarciodonto13@gmail.com',
  '11983273770',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MK LOCACAO E COMERCIO DE MOTOS LTDA',
  'MK LOCACAO E COMERCIO DE MOTOS LTDA',
  '59.748.401/0001-77',
  'A definir',
  'showmoto@icloud.com',
  '6198387102',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CARLOS EDUARDO F√âLIX FERREIRA (S√ÉO LUIS - MA)',
  'CARLOS EDUARDO F√âLIX FERREIRA (S√ÉO LUIS - MA)',
  '35.039.265/0001-88',
  'S√ÉO LUIS, MA. Bairro QUINTAS DO CALHAU, rua AV.PRESIDENTE JUSCELINO PARTE2, N¬∫ 519',
  'cadufelix100@gmail.com',
  '9898703014',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master São Luís do Maranhão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MF LOCMOTOS LTDA',
  'MF LOCMOTOS LTDA',
  '61.754.234/0001-19',
  'A definir',
  'marcos.fagundes2006@gmail.com',
  '31991881615',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PH LOCACAO DE VEICULOS LTDA',
  'PH LOCACAO DE VEICULOS LTDA',
  '58.367.030/0001-10',
  'SALVADOR, BA. Bairro Caminho das √Årvores, rua Av. Tancredo Neves, N¬∫ 1189',
  'phasampaio1@hotmail.com',
  '79991985777',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LF LOCADORA LTDA',
  'LF LOCADORA LTDA',
  '58.440.620/0001-21',
  'A definir',
  'lflocadoracba@gmail.com',
  '65981160000',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JWAM - LOCACAO DE MOTOCICLETAS E AUTOMOVEIS LTDA',
  'JWAM - LOCACAO DE MOTOCICLETAS E AUTOMOVEIS LTDA',
  '61.251.349/0001-90',
  'A definir',
  'jwam.motos@outlook.com',
  '11994427515',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'D&S LOCACOES LTDA (CAIO/DERIVALDO)- SEDE - SALVADOR',
  'D&S LOCACOES LTDA (CAIO/DERIVALDO)- SEDE - SALVADOR',
  '54.416.350/0002-43',
  'SALVADOR, BA. Bairro BOCA DO RIO, rua AV MESTRE MANOEL, N¬∫ 149',
  'derivaldo_silva@hotmail.com',
  '7591278626',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOGO LOCACOES LTDA',
  'MOTOGO LOCACOES LTDA',
  '56.948.105/0001-21',
  'A definir',
  'ibrasil.contato@gmail.com',
  '8591814429',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Ribeiro Peracchi loca√ß√µes LTDA',
  'Ribeiro Peracchi loca√ß√µes LTDA',
  '60.479.670/0001-64',
  'A definir',
  '91991127072',
  '16646002215',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MODESTO LOCACOES LTDA',
  'MODESTO LOCACOES LTDA',
  '60.197.794/0001-57',
  'A definir',
  'marcio.modesto@hotnail.com',
  '67992270481',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCADEZ LTDA',
  'LOCADEZ LTDA',
  '62.548.949/0001-88',
  'JO√ÉO PESSOA, PB. Bairro Jaguaribe, rua Av. Vasco da Gama, N¬∫ 379',
  'marcelodias99751190@hotmail.com',
  '6799975119',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCADEL MOTOS LOCADORA MOTOS LTDA',
  'LOCADEL MOTOS LOCADORA MOTOS LTDA',
  '61.591.747/0001-56',
  'A definir',
  'locadelmotos@gmail.com',
  '11996162008',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BBCA COSTA EXPRESS LTDA',
  'BBCA COSTA EXPRESS LTDA',
  '62.633.628/0001-81',
  'A definir',
  'costaexpressbbca@gmail.com',
  '11929858511',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LEO LOCADORA VEICULO LTDA',
  'LEO LOCADORA VEICULO LTDA',
  '62.603.711/0001-08',
  'A definir',
  'leonardo.santos.duarte@hotmail.com',
  '31972515678',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LAS LOCACOES E COM DE VEICULOS E MOTOS LTDA',
  'LAS LOCACOES E COM DE VEICULOS E MOTOS LTDA',
  '58.724.100/0001-40',
  'RIO DE JANEIRO, RJ. Bairro Barra da Tijuca, rua Luis Sergio Person, N¬∫ 217',
  'vinicius.roque@hotmail.com',
  '21971137839',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SEMPRE LOCACAO LTDA',
  'SEMPRE LOCACAO LTDA',
  '57.017.502/0001-42',
  'A definir',
  'semprelocacaosp@gmail.com',
  '11980926018',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MELO TREINAMENTOS E MENTORIA LTDA',
  'MELO TREINAMENTOS E MENTORIA LTDA',
  '22.822.573/0001-33',
  'A definir',
  'drerasto@gmail.com',
  '62984151535',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FERREIRA ANDRADE LTDA',
  'FERREIRA ANDRADE LTDA',
  '61.778.277/0001-34',
  'BRAGAN√áA PAULISTA, SP. Bairro CENTRO, rua AV ANTONIO PIRES PIMENTEL, N¬∫ 865',
  'agoralocamotos@gmail.com',
  '6285291011',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CVAW MOTOS LTDA',
  'CVAW MOTOS LTDA',
  '60.669.786/0001-66',
  'A definir',
  'wedantonucci@gmail.com',
  '31991462949',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VALLELOC - LOCADORA DE VEICULO LTDA',
  'VALLELOC - LOCADORA DE VEICULO LTDA',
  '61.721.724/0001-19',
  'Bairro BRO JARDIM AMERICA, rua AV 79, N¬∫ S/N',
  'valleloc.locadora@gmail.com',
  '31987847783',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EF MOTORES E ENERGIA',
  'EF MOTORES E ENERGIA',
  '59.823.825/0001-59',
  'A definir',
  'eduardo.fraideimberze@gmail.com',
  '16981546075',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MARCO T√öLIO SILVA ALVES (BELO HORIZONTE - MG)',
  'MARCO T√öLIO SILVA ALVES (BELO HORIZONTE - MG)',
  '32.244.792/0001-36',
  'BELO HORIZONTE , MG. Bairro Floresta , rua Rua Marechal Deodoro , N¬∫ 293',
  'tulio_silva_alves@hotmail.com',
  '37999519218',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Belo Horizonte'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AG GEST√ÉO DE ALUGUEIS DE VEICULOS LTDA',
  'AG GEST√ÉO DE ALUGUEIS DE VEICULOS LTDA',
  '63.557.021/0001-22',
  'A definir',
  'araujoaluciana@gmail.com',
  '3970298539',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Jean Vitor Moura Neumann (Wagner Andrade/Pedro) - S√£o Paulo - SP (sede)',
  'Jean Vitor Moura Neumann (Wagner Andrade/Pedro) - S√£o Paulo - SP (sede)',
  '56.922.276/0001-81',
  'A definir',
  'jean_ii@hotmail.com',
  '16982559002',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOLIBERTA LOCADORA LTDA',
  'MOTOLIBERTA LOCADORA LTDA',
  '58.218.668/0001-90',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Rua Barata Ribeiro, N¬∫ 236',
  'motoliberta@gmail.com',
  '11981467822',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RUSSO MOTORS LTDA',
  'RUSSO MOTORS LTDA',
  '60.829.641/0001-85',
  'A definir',
  'jmlrusso@gmail.com',
  '81999734042',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Dubai locadora',
  'Dubai locadora',
  '56.100.443/0001-09',
  'PAULO DE FARIA, SP. Bairro CANIND√â, rua AV CRUZEIRO DO SUL, N¬∫ 130',
  'locadoradubai@gmail.com',
  '11990184109',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'NOVA ROTA LOCACOES LTDA - ME',
  'NOVA ROTA LOCACOES LTDA - ME',
  '60.199.780/0001-72',
  'A definir',
  'saulofinanceiro@hotmail.com',
  '41997449800',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GR CONSULI LTDA',
  'GR CONSULI LTDA',
  '62.113.476/0001-96',
  'A definir',
  'gconsuli@hotmail.com',
  '12981294158',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EDUARDO ALCANTARA DUQUE DA SILVA LTDA',
  'EDUARDO ALCANTARA DUQUE DA SILVA LTDA',
  '62.158.482/0001-60',
  'FLORIAN√ìPOLIS, SC. Bairro COLONINHA, rua RUA WALDEMAR OURIQUES, N¬∫ 549',
  'duquepenal@adv.oabrj.org.br',
  '27981298105',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PRO CORRE LOCACAO INTELIGENTE LTDA',
  'PRO CORRE LOCACAO INTELIGENTE LTDA',
  '61.999.729/0001-08',
  'A definir',
  'afroemming@terra.com.br',
  '5192753350',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AVL LOCACOES LTDA',
  'AVL LOCACOES LTDA',
  '61.168.229/0001-24',
  'JO√ÉO PESSOA, PB. Bairro Jaguaribe, rua Avenida capit√£o jos√© pessoa, N¬∫ 379',
  'locacoesavl@gmail.com',
  '31971344483',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MASTER AZEVEDO',
  'MASTER AZEVEDO',
  '56.915.151/0001-24',
  'A definir',
  'rogerio.leticia@yahoo.com.br',
  '11997859584',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'L11 LOCADORA DE VEICULOS',
  'L11 LOCADORA DE VEICULOS',
  '57.879.608/0001-55',
  'A definir',
  'lucaslporto@hotmail.com',
  '11961092144',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LEANDRO AUGUSTO LOCACOES LTDA',
  'LEANDRO AUGUSTO LOCACOES LTDA',
  '62.342.578/0001-83',
  'A definir',
  'julianaenf31@hotmail.com',
  '6298501773',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FE LOCACOES LTDA',
  'FE LOCACOES LTDA',
  '62.156.811/0001-33',
  'SALVADOR, BA. Bairro CAMINHO DAS ARVORES, rua AV TANCREDO NEVES, N¬∫ 001189',
  'franciscoedson2000@yahoo.com.br',
  '7592067499',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ORSINI LOCADORA E COMERCIO DE MOTOS LTDA',
  'ORSINI LOCADORA E COMERCIO DE MOTOS LTDA',
  '60.794.513/0001-43',
  'A definir',
  '11998996490',
  '18742827817',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FTSILVA MOTOS LTDA',
  'FTSILVA MOTOS LTDA',
  '56.911.088/0001-58',
  'A definir',
  'ftadeu_silva@yahoo.com.br',
  '12992174020',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Locmoto com√©rcio de motocicletas ltda',
  'Locmoto com√©rcio de motocicletas ltda',
  '52.194.996/0001-17',
  'A definir',
  'dricamargo111@gmail.com',
  '11953546811',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ZAROS LOCACAO LTDA',
  'ZAROS LOCACAO LTDA',
  '62.639.420/0001-70',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AV MIGUEL SUTIL, N¬∫ 11990',
  'zarosloca@gmail.com',
  '19991795630',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LH LOCACOES DE VEICULOS LTDA',
  'LH LOCACOES DE VEICULOS LTDA',
  '63.049.468/0001-90',
  'MANAUS, AM. Bairro SAO FRANCISCO, rua R FRANCO DE SA, N¬∫ 310',
  'lhmotos36@gmail.com',
  '35988618914',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Manaus'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Adriano Denegaro',
  'Adriano Denegaro',
  '51.953.543/0001-64',
  'A definir',
  'denegaro@gmail.com',
  '2299910408',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCABRAS LOCADORA DE VEICULOS LTDA',
  'LOCABRAS LOCADORA DE VEICULOS LTDA',
  '58.361.803/0001-51',
  'A definir',
  'marco.paes@uol.com.br',
  '31991636241',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JC LOCMOTOS LTDA',
  'JC LOCMOTOS LTDA',
  '62.699.767/0001-08',
  'A definir',
  'jean@lojasverona.com.br',
  '83999842497',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MAJESDRAS LOCACAO LTDA',
  'MAJESDRAS LOCACAO LTDA',
  '61.886.736/0001-01',
  'R. Barata Ribeiro, 236 - Copacabana',
  'oceancorretoraseguros@gmail.com',
  '21999763180',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MILLANI LOCADORA DE VEICULOS LTDA',
  'MILLANI LOCADORA DE VEICULOS LTDA',
  '59.944.342/0001-02',
  'A definir',
  '41988249227',
  '25330888972',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'W&W LOCADORA DE VEICULOS LTDA',
  'W&W LOCADORA DE VEICULOS LTDA',
  '35.387.218/0001-25',
  'SALVADOR, BA. Bairro PIAT√É, rua RUA DOS AZUL√ïES, N¬∫ 0',
  'wiliaquison@gmail.com',
  '71983282930',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'HTC LOCA√á√îES LTDA',
  'HTC LOCA√á√îES LTDA',
  '56.128.020/0001-05',
  'A definir',
  'htclocacoes@gmail.com',
  '31999912810',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RICHARDS VENDA E LOCACAO DE MOTOCICLETAS LTDA',
  'RICHARDS VENDA E LOCACAO DE MOTOCICLETAS LTDA',
  '58.402.524/0001-99',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua RUA BARATA RIBEIRO , N¬∫ 236',
  'adv.fernandorichards@gmail.com',
  '67981894999',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCSEMPRE ALUGUEL DE VEICULOS LTDA',
  'LOCSEMPRE ALUGUEL DE VEICULOS LTDA',
  '61.215.155/0001-30',
  'JO√ÉO PESSOA, PB. Bairro MANAIRA, rua R BANANEIRAS, N¬∫ 361',
  'oa.lima@gmail.com',
  '31986867998',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MGLS LTDA',
  'MGLS LTDA',
  '59.989.706/0001-70',
  'A definir',
  'rodrigo.magalhaes721@gmail.com',
  '21996922025',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MAGUI',
  'MAGUI',
  '53.573.582/0001-61',
  'A definir',
  'agnaldo.porshe@gmail.com',
  '11999962007',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DAMASSA ALUGUEL DE MOTOS LTDA',
  'DAMASSA ALUGUEL DE MOTOS LTDA',
  '61.928.615/0001-77',
  'A definir',
  'gabrielgdamasceno@hotmail.com',
  '2799252298',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOC FACIL LOCACOES E COMERCIO DE VEICULOS LTDA',
  'LOC FACIL LOCACOES E COMERCIO DE VEICULOS LTDA',
  '60.104.848/0001-92',
  'A definir',
  '83987770707',
  '43634940425',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RJD INDEPENDENCIA FINANCEIRA E MOBILIDADE LTDA',
  'RJD INDEPENDENCIA FINANCEIRA E MOBILIDADE LTDA',
  '58.513.802/0001-85',
  'SALVADOR, BA. Bairro Boca do Rio, rua Avenida Mestre Manoel, N¬∫  n¬∫ 149',
  'rjdmobilidade@gmail.com',
  '11992294833',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MILORCYCLE LTDA',
  'MILORCYCLE LTDA',
  '63.669.839/0001-37',
  'A definir',
  'milorcycle@gmail.com',
  '21964577198',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Raphael L Ve√≠culos',
  'Raphael L Ve√≠culos',
  '59.501.014/0001-31',
  'A definir',
  'raphaeljsantunes@gmail.com',
  '2499208057',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LLM COMERCIO E SERVICOS',
  'LLM COMERCIO E SERVICOS',
  '57.823.632/0001-72',
  'A definir',
  'llmcomercioservicos@gmail.com',
  '11983808380',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VP MOTOS E LOCA√á√ÉO LTDA - Valter Mauricio Pereira - S√£o Paulo - SP (sede)',
  'VP MOTOS E LOCA√á√ÉO LTDA - Valter Mauricio Pereira - S√£o Paulo - SP (sede)',
  '56.281.871/0001-85',
  'PAULO DE FARIA, SP. Bairro Canind√©, rua Avenida Cruzeiro do Sul, N¬∫ 130',
  'v-mpereira@hotmail.com',
  '11941729981',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LETUS LOCACOES LTDA',
  'LETUS LOCACOES LTDA',
  '60.869.172/0001-28',
  'JO√ÉO PESSOA, PB. Bairro ESTADOS, rua AV PRESIDENTE EPIT√ÅCIO PESSOA, N¬∫ 1251',
  'ulisses@i9menu.com.br',
  '1199275900',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VALE DO ACO VENDA E LOCACAO DE MOTOS',
  'VALE DO ACO VENDA E LOCACAO DE MOTOS',
  '58.112.802/0001-73',
  'A definir',
  'cristianocardosomg@gmail.com',
  '31999969580',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TEIMONDE COMPRA E LOCACAO DE MOTOS LTDA',
  'TEIMONDE COMPRA E LOCACAO DE MOTOS LTDA',
  '60.215.231/0001-44',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua R BARATA RIBEIRO, N¬∫ 236',
  'lealdo@infonet.com.br',
  '79999724259',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JT LOCADORA LTDA',
  'JT LOCADORA LTDA',
  '58.404.523/0001-83',
  'RIO DE JANEIRO, RJ. Bairro COPACABA, rua BARATA RIBEIRO, N¬∫ 236',
  'leonardo@quattuoreng.com',
  '21983046981',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DONNER LOCADORA DE VEICULOS LTDA',
  'DONNER LOCADORA DE VEICULOS LTDA',
  '60.174.200/0001-92',
  'A definir',
  '43984321105',
  '2041719974',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Wwl Locadora De Veiculos Ltda',
  'Wwl Locadora De Veiculos Ltda',
  '53.156.392/0001-49',
  'A definir',
  'cobranca1@locagoraba.com.br',
  'VENIDA TANCREDO NEVES, 001189, EDIF GUIMARAES TRAD SALA 1603, CAMINHO DAS ARVORES CEP: 41820021',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Feira de Santana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BENDORA LOCACOES LTDA',
  'BENDORA LOCACOES LTDA',
  '57.592.654/0001-79',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Barata Ribeiro, N¬∫ 236',
  'thiagopeixotorj@gmail.com',
  '21995555156',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AUTOLOC LOCADORA DE VEICULOS LTDA',
  'AUTOLOC LOCADORA DE VEICULOS LTDA',
  '58.093.044/0001-93',
  'A definir',
  'autolocjanauba@gmail.com',
  '38991097021',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'S√©rgio Augusto Pinto Soeiro  - S√ÉO PAULO - SEDE',
  'S√©rgio Augusto Pinto Soeiro  - S√ÉO PAULO - SEDE',
  '55.197.456/0001-85',
  'A definir',
  'sergio_soeiro@yahoo.com.br',
  '91999266699',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'USELOC ALUGUEL DE MOTOS LTDA  - CANIND√â - SP',
  'USELOC ALUGUEL DE MOTOS LTDA  - CANIND√â - SP',
  '56.881.933/0001-90',
  'A definir',
  'uselocadoramotos@gmail.com',
  '11953546811',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DIRANI TRANSPORTES LTDA',
  'DIRANI TRANSPORTES LTDA',
  '61.858.425/0001-20',
  'BRAGAN√áA PAULISTA, SP. Bairro CENTRO, rua AVENIDA ANTONIO PIRES PIMENTEL, N¬∫ 865',
  'ricardovdirani@yahoo.com.br',
  '19989184895',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'E J LOCACAO DE VEICULOS PESADOS LTDA',
  'E J LOCACAO DE VEICULOS PESADOS LTDA',
  '50.939.308/0001-75',
  'A definir',
  '82988851667',
  '1835493620',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LFA COMERCIO E LOCACAO DE MOTOCICLETAS LTDA',
  'LFA COMERCIO E LOCACAO DE MOTOCICLETAS LTDA',
  '59.016.531/0001-15',
  'A definir',
  'lucianoandrade1001@yahoo.com.br',
  '34991559660',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VLLV auto ltda',
  'VLLV auto ltda',
  '55.363.861/0001-26',
  'A definir',
  'vvlvauto@gmail.com',
  '61981533035',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAMAR LTDA',
  'LOCAMAR LTDA',
  '58.855.389/0001-37',
  'A definir',
  'marcosmartinsribeiroes@gmail.com',
  '27998135379',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ATC LOCAMOTORS LTDA',
  'ATC LOCAMOTORS LTDA',
  '62.220.086/0001-15',
  'A definir',
  'alissontebas@hotmail.com',
  '31984697570',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  '4VETOR LOCACOES LTDA',
  '4VETOR LOCACOES LTDA',
  '58.456.307/0001-81',
  'A definir',
  'alexandre4vetor@gmail.com',
  '11994053637',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CMR LOCACOES LTDA',
  'CMR LOCACOES LTDA',
  '60.182.875/0001-83',
  'A definir',
  'celenaalves32@gmail.com',
  '11989943601',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FERNANDA ZAICOVSKI DE CARVALHO (BELO HORIZONTE - MG)',
  'FERNANDA ZAICOVSKI DE CARVALHO (BELO HORIZONTE - MG)',
  '52.013.038/0001-00',
  'BELO HORIZONTE , MG. Bairro Floresta , rua Rua Marechal Deodoro , N¬∫ 293',
  'fezaicovski@yahoo.com.br',
  '51996834557',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floresta'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RUBENS ALVES EMPREENDIMENTOS E CONSULTORIA LTDA',
  'RUBENS ALVES EMPREENDIMENTOS E CONSULTORIA LTDA',
  '42.763.030/0001-08',
  'A definir',
  'motosrga@gmail.com',
  '31996190483',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ARR LOCACOES LTDA',
  'ARR LOCACOES LTDA',
  '5720457300015',
  'A definir',
  'desativado@1734004543452x901375641211357800.com',
  '1196979206',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AGIL SERVICOS E LOCACAO LTDA',
  'AGIL SERVICOS E LOCACAO LTDA',
  '61.157.898/0001-09',
  'A definir',
  'agil.recife@gmail.com',
  '11971306988',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LAVORO INVESTIMENTOS E PARTICIPACOES LTDA',
  'LAVORO INVESTIMENTOS E PARTICIPACOES LTDA',
  '52.159.211/0001-75',
  'A definir',
  'juvencio.operacional@rodojett.com.br',
  '16997085106',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCADORA DE MOTOS SEVEN LTDA',
  'LOCADORA DE MOTOS SEVEN LTDA',
  '60.367.843/0001-52',
  'A definir',
  '45998281777',
  '3729414941',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SSO LOCACOES LTDA',
  'SSO LOCACOES LTDA',
  '61.041.441/0001-26',
  'A definir',
  '48991790711',
  '99584700049',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ROTA 2R LTDA',
  'ROTA 2R LTDA',
  '62.833.175/0001-37',
  'CUIAB√Å, MT. Bairro Cidade alta, rua Av. Miguel Sutil, N¬∫ 11990',
  'mcardimachado@gmail.com',
  '11985852679',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MM LOCACAO DE VEICULOS LTDA - Marcela Alvim Mendes e Marcio de Barros Mendes',
  'MM LOCACAO DE VEICULOS LTDA - Marcela Alvim Mendes e Marcio de Barros Mendes',
  '57.080.664/0001-25',
  'A definir',
  'mmlocagora@gmail.com',
  '1194458120',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VS LOCADORA DE VEICULOS LTDA',
  'VS LOCADORA DE VEICULOS LTDA',
  '58.471.369/0001-62',
  'A definir',
  'vslocacaomotos@gmail.com',
  '53984116530',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RAZ ENGELOC LTDA',
  'RAZ ENGELOC LTDA',
  '60.638.717/0001-95',
  'A definir',
  'fortaleza@razservice.com',
  '31994000066',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Sorocaba - START LOCADORAS DE VEICULOS LTDA',
  'Sorocaba - START LOCADORAS DE VEICULOS LTDA',
  '57.899.188/0001-79',
  'SOROCABA, SP. Bairro Jardim Faculdade, rua Rua Ant√¥nio de Andrade, N¬∫ 276',
  'rose.startassessoria@gmail.com',
  '31996322716',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Sorocaba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ELAN LOCADORA LTDA',
  'ELAN LOCADORA LTDA',
  '57.569.115/0001-19',
  'RIO DE JANEIRO, RJ. Bairro copacabana , rua rua barata ribeiro , N¬∫ 232',
  'elanlocadora@gmail.com',
  '28999554095',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LBMK LOCACAO DE MOTOCICLETAS LTDA',
  'LBMK LOCACAO DE MOTOCICLETAS LTDA',
  '57.882.297/0001-83',
  'A definir',
  'lmklocadora@gmail.com',
  '11944888824',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'NC LOCMAIS SERVICOS LTDA',
  'NC LOCMAIS SERVICOS LTDA',
  '60.407.011/0001-12',
  'SALVADOR, BA. Bairro CAMINHO DAS ARVORES, rua AV TANCREDO NEVES, N¬∫ 001189',
  'marcelnoblat.adv@gmail.com',
  '7191031907',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ALPHA JULIETT LOCADORA LTDA',
  'ALPHA JULIETT LOCADORA LTDA',
  '63.451.853/0001-60',
  'A definir',
  '11954409529',
  '23671911824',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ENERGIA POSITIVA ASSESSORIA EMPRESARIAL, COMERCIO E LOCACAO DE VEICULOS LTDA',
  'ENERGIA POSITIVA ASSESSORIA EMPRESARIAL, COMERCIO E LOCACAO DE VEICULOS LTDA',
  '72.891.112/0001-90',
  'S√ÉO PAULO, SP. Bairro Tatuap√©, rua Nova Jerusal√©m, N¬∫ 807',
  'walter@energiapositiva.com.br',
  '11983770808',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AUTOFLEX FLORIPA LTDA',
  'AUTOFLEX FLORIPA LTDA',
  '61.968.432/0001-85',
  'FLORIAN√ìPOLIS, SC. Bairro CAPOEIRAS, rua RUA VALDEMAR OURIQUES, N¬∫ 549',
  'augustomurat@gmail.com',
  '4891775869',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AJF LOCACOES DE VEICULOS LTDA',
  'AJF LOCACOES DE VEICULOS LTDA',
  '59.622.081/0001-04',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua BARATA RIBEIRO, N¬∫ 236',
  'angelojosefabio@yahoo.com.br',
  '61991119911',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ALG LOCADORA DIVERSAS LTDA',
  'ALG LOCADORA DIVERSAS LTDA',
  '48.019.890/0001-00',
  'JO√ÉO PESSOA, PB. Bairro AEROCLUBE, rua PASTOR JOSEBIAS FIALHO MARINHO, N¬∫ 40',
  'testesssss@gmail.com',
  '61981724360',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'KAP MOTOS LOCACOES LTDA',
  'KAP MOTOS LOCACOES LTDA',
  '47.768.409/0001-16',
  'A definir',
  'daniloloria17@gmail.com',
  '2199562370',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RCA LOCADORA LTDA',
  'RCA LOCADORA LTDA',
  '61.440.049/0001-50',
  'A definir',
  '82999853023',
  '4527400452',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'WR LOCACOES E REVENDA DE VEICULOS LTDA',
  'WR LOCACOES E REVENDA DE VEICULOS LTDA',
  '57.161.724/0001-34',
  'A definir',
  'washington1967@bol.com.br',
  '83994440518',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Bragan√ßa LVM LOCACAO DE BENS LTDA',
  'Bragan√ßa LVM LOCACAO DE BENS LTDA',
  '57.373.209/0001-18',
  'BRAGAN√áA PAULISTA, SP. Bairro Centro, rua Av. Ant√¥nio Pires Pimental , N¬∫ 865',
  'Mvaautomoveis1@gmail.com',
  '65984041818',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VNF LOCACOES E COMERCIO LTDA',
  'VNF LOCACOES E COMERCIO LTDA',
  '60.852.269/0001-28',
  'A definir',
  'vivianenalim@hotmail.com',
  '28981181095',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MURASERVICE LOCACOES & COMERCIO DE VEICULOS LTDA',
  'MURASERVICE LOCACOES & COMERCIO DE VEICULOS LTDA',
  '58.272.670/0001-47',
  'RUA BARATA RIBEIRO, 236 A - COPACABANA',
  'muraservice.rio@gmail.com',
  '21971213029',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FE LOCADORA LTDA',
  'FE LOCADORA LTDA',
  '61.861.249/0001-86',
  'FLORIAN√ìPOLIS, SC. Bairro CAPOEIRAS, rua RUA WALDEMAR OURIQUES, N¬∫ 549',
  'felocadora44@gmail.com',
  '41985017156',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOLOC GOIANIA LTDA',
  'MOTOLOC GOIANIA LTDA',
  '62.308.615/0001-37',
  'A definir',
  'contato@control.com.br',
  '27931910087',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FREE WAY MOTO LTDA',
  'FREE WAY MOTO LTDA',
  '59.426.096/0001-05',
  'A definir',
  'freewaymoto25@gmail.com',
  '11997680106',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GOMES SANTANA LOCACOES LTDA',
  'GOMES SANTANA LOCACOES LTDA',
  '59.240.567/0001-88',
  'CURITIBA, PR. Bairro BARRA DA TIJUCA, rua Lu√≠s S√©rgio Person, N¬∫ 127',
  'klaussantana10@gmail.com',
  '94981071949',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  '7 ALUGUEL DE MOTOS LTDA',
  '7 ALUGUEL DE MOTOS LTDA',
  '61.444.802/0001-85',
  'PORTO ALEGRE, RS. Bairro S√ÉO GERALDO, rua Av. Pres. Franklin Roosevelt, N¬∫ 1579',
  'guilherme.knustferreira@gmail.com',
  '11994573443',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'R. F. CONCEICAO & CIA LTDA',
  'R. F. CONCEICAO & CIA LTDA',
  '58.555.443/0001-29',
  'A definir',
  'vidmotoslocadora@gmail.com',
  '63992269366',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ABF LOCA√á√ïES - SLZ',
  'ABF LOCA√á√ïES - SLZ',
  '22.119.801/0001-03',
  'S√ÉO LU√çS, MA. Bairro QUINTAS DO CALHAU , rua RUA S√ÉO DOMINGOS , N¬∫ 5',
  'locagoraslz1000@gmail.com',
  '98991163079',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master São Luís do Maranhão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ALUGUEL DE MOTOS SANTOS LTDA',
  'ALUGUEL DE MOTOS SANTOS LTDA',
  '61.198.935/0001-19',
  'A definir',
  '79999981115',
  '7651608542',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PEGASUS LOCACAO E COMERCIO DE MOTOS LTDA',
  'PEGASUS LOCACAO E COMERCIO DE MOTOS LTDA',
  '61.458.768/0001-06',
  'A definir',
  'marconivc@gmail.com',
  '47991211073',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ML SOLUTIONS LOCADORA LTDA',
  'ML SOLUTIONS LOCADORA LTDA',
  '58.248.208/0001-04',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua BARATA RIBEIRO, N¬∫ 236',
  'mlsolutionslocadora@gmail.com',
  '31984807516',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'G. GALACINI HANSTED LTDA',
  'G. GALACINI HANSTED LTDA',
  '60.539.888/0001-67',
  'A definir',
  'g_hansted@icloud.com',
  '19982381886',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GUADALUPE LOCACAO DE MOTOS LTDA',
  'GUADALUPE LOCACAO DE MOTOS LTDA',
  '60.870.053/0001-95',
  'A definir',
  'heidemann1001@gmail.com',
  '61995271073',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'E. BIRKHAHN E SILVA PINTO CIA LTDA',
  'E. BIRKHAHN E SILVA PINTO CIA LTDA',
  '61.342.822/0001-45',
  'PORTO ALEGRE, RS. Bairro SAO GERALDO, rua AV PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'motojanatalrn@gmail.com',
  '84996397872',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GAV LOCADORA LTDA',
  'GAV LOCADORA LTDA',
  '57.712.730/0001-32',
  'SOROCABA, SP. Bairro JARDIM FACULDADE, rua ANTONIO DE ANDRADE, N¬∫ 276',
  'mobiforte.loca@gmail.com',
  '11992746120',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Sorocaba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'A.L.O LOCACOES LTDA',
  'A.L.O LOCACOES LTDA',
  '60.839.151/0001-60',
  'A definir',
  '47999013893',
  '432791981',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Elza Maria Duarte Chaves (RAPHAEL CHAVES)- S√£o Paulo - SP (sede)',
  'Elza Maria Duarte Chaves (RAPHAEL CHAVES)- S√£o Paulo - SP (sede)',
  '56.054.236/0001-65',
  'A definir',
  'pprlocadora@gmail.com',
  '11981745758',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JD INTERMEDIACOES SERVICOS DE TELECOM UNIPESSOAL LTDA',
  'JD INTERMEDIACOES SERVICOS DE TELECOM UNIPESSOAL LTDA',
  '45.139.923/0001-67',
  'A definir',
  'adm.jdintermediacao@gmail.com',
  '11961700402',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ULIOBIG ALUGUEIS LTDA',
  'ULIOBIG ALUGUEIS LTDA',
  '59.396.149/0001-84',
  'A definir',
  'uliobig@gmail.com',
  '94992936988',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LU LOCADORA DE MOTOS LTDA',
  'LU LOCADORA DE MOTOS LTDA',
  '63.533.017/0001-24',
  'AV TANCREDO NEVES, EDIF GUIMARAES TRADE, 001189',
  'LEOBRITO1_ODONTO@HOTMAIL.COM',
  '7591899960',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Everson Am√¢ncio dos Santos / C√≠ntia - SP (Sede) - Freguesia do √≥',
  'Everson Am√¢ncio dos Santos / C√≠ntia - SP (Sede) - Freguesia do √≥',
  '57.232.529/0001-58',
  'A definir',
  'locagoraecel@gmail.com',
  '11947298340',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MPL SERVICOS DE TRANSPORTE LTDA',
  'MPL SERVICOS DE TRANSPORTE LTDA',
  '61.469.171/0001-59',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua RUA ANNE FRANK, N¬∫ 3687',
  'lucas.romero1@gmail.com',
  '1198025196',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JME LOCADORA',
  'JME LOCADORA',
  '60.916.135/0001-23',
  'A definir',
  'jmelocagora@gmail.com',
  '81981233152',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'R & R RENT A MOTO LTDA',
  'R & R RENT A MOTO LTDA',
  '59.694.792/0001-94',
  'A definir',
  'mack_br@hotmail.com',
  '31987257879',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GA BARONE LOCADORA LTDA',
  'GA BARONE LOCADORA LTDA',
  '57.829.237/0001-05',
  'S√ÉO PAULO, SP. Bairro TATUAPE, rua RUA NOVA JERUSALEM, N¬∫ 807',
  'tatybarone@yahoo.com.br',
  '19971711510',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'J. P. MORAIS LTDA',
  'J. P. MORAIS LTDA',
  '58.362.059/0001-00',
  'A definir',
  'cledicon07@gmail.com',
  '92996588805',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DANTASCAR VEICULOS LTDA',
  'DANTASCAR VEICULOS LTDA',
  '56.608.864/0001-45',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Avenida Barata Ribeiro, N¬∫ 236',
  'marcocdantad73@gmail.com',
  '22974030463',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Locgo SP loca√ß√£o e com√©rcio de ve√≠culos ltda',
  'Locgo SP loca√ß√£o e com√©rcio de ve√≠culos ltda',
  '55.601.119/0001-01',
  'A definir',
  'locgosp@gmail.com',
  '11950619924',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JULIO CESAR CONEGUNDES DA SILVA LTDA',
  'JULIO CESAR CONEGUNDES DA SILVA LTDA',
  '62.518.802/0001-45',
  'A definir',
  'jcconegundes@gmail.com',
  '62996763803',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'KALU LOCACAO AUTOMOTIVA LTDA',
  'KALU LOCACAO AUTOMOTIVA LTDA',
  '58.248.348/0001-82',
  'RIO DE JANEIRO, RJ. Bairro Copacabana , rua BARATA RIBEIRO , N¬∫ 236',
  'kalulocacoes2025@gmail.com',
  '11948992629',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MEYER LOCA√á√ÉO DE MOTOS LTDA',
  'MEYER LOCA√á√ÉO DE MOTOS LTDA',
  '61.135.712/0001-75',
  'AV. Tancredo Neves, 001189. Guimar√£es Trade',
  'ildomeyer@gmail.com',
  '51981422967',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'STAR MOTO LOCACAO DE VEICULOS LTDA',
  'STAR MOTO LOCACAO DE VEICULOS LTDA',
  '62.093.774/0001-61',
  'SALVADOR, BA. Bairro CAMINHO DAS ARVORES, rua AVENIDA TANCREDO NEVES, N¬∫ 001189',
  'brunodepaula@hotmail.com',
  '71996205993',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RODANMOTOLOC LTDA',
  'RODANMOTOLOC LTDA',
  '61.756.509/0001-53',
  'rodanmotloc@gmail.com',
  'rodanmotloc@gmail.com',
  '1198573013',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DANILA DA SILVA',
  'DANILA DA SILVA',
  '62.869.473/0001-87',
  'A definir',
  'rodrigofolgari@gmail.com',
  '11942745319',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  '3I MOTORS',
  '3I MOTORS',
  '55.893.000/0001-50',
  'A definir',
  '3iiiecommerce@gmail.com',
  '11976620405',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SAFED',
  'SAFED',
  '32.930.316/0001-79',
  'A definir',
  'edumarcon@uol.com.br',
  '11981875069',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RS6 VEICULOS LTDA',
  'RS6 VEICULOS LTDA',
  '54.274.974/0001-92',
  'A definir',
  'sandrohira@gmail.com',
  '11994745227',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FLAG LOCADORA',
  'FLAG LOCADORA',
  '22.092.269/0001-88',
  'A definir',
  'gilvanvalerio@galago.com.br',
  '61996361570',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CORREA & BIASUTTI LOCADORA LTDA',
  'CORREA & BIASUTTI LOCADORA LTDA',
  '61.830.981/0001-99',
  'A definir',
  'ceb5556@hotmail.com',
  '27999557560',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VARELA LOCACOES & NEGOCIACOES LTDA',
  'VARELA LOCACOES & NEGOCIACOES LTDA',
  '58.421.210/0001-33',
  'RIO DE JANEIRO, RJ. Bairro Copacabana , rua barata ribeiro , N¬∫ 236',
  'varela.afiliados@gmail.com',
  '1197697618',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JD HOLDING LTDA',
  'JD HOLDING LTDA',
  '60.283.003/0001-01',
  'SALVADOR, BA. Bairro Boca do rio, rua Mestre Manoel , N¬∫ 149',
  'jdholding777@gmail.com',
  '71991585234',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JUVI LOCACAO DE MOTOS LTDA',
  'JUVI LOCACAO DE MOTOS LTDA',
  '62.699.989/0001-20',
  'A definir',
  'bjv.roberto@gmail.com',
  '11983894228',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MARIA CELIA MOTOS LTDA',
  'MARIA CELIA MOTOS LTDA',
  '61.517.742/0001-83',
  'A definir',
  'icaroteixeirafarias@gmail.com',
  '61985301519',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'REVITHA MOTORCYCLES LTDA',
  'REVITHA MOTORCYCLES LTDA',
  '57.696.680/0001-47',
  'A definir',
  'renato@revithaseguro.com.br',
  '48999814581',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAT LOCACOES DE VEICULOS AUTOMORES LTDA',
  'LOCAT LOCACOES DE VEICULOS AUTOMORES LTDA',
  '60.642.191/0001-17',
  'SALVADOR, BA. Bairro COMERCIO, rua AV ESTADOS UNIDOS, N¬∫ 397',
  'andrei_tavares@hotmail.com',
  '71996084874',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BANDEIRA LOCACOES LTDA',
  'BANDEIRA LOCACOES LTDA',
  '62.207.818/0001-37',
  'FLORIAN√ìPOLIS, SC. Bairro COLONINHA, rua RUA WALDEMAR OURIQUES, N¬∫ 549',
  'bandeiraloca@gmail.com',
  '11918329099',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RICS AUTOS LTDA',
  'RICS AUTOS LTDA',
  '39.360.392/0001-35',
  'BRAGAN√áA PAULISTA, SP. Bairro Biri√ßa , rua AC AO BAIRRO DO BIRICA (ZONA RURAL) , N¬∫ S/N',
  'locagorabraganca@gmail.com',
  '11987698123',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA BELO HORIZONTE',
  'LOCAGORA BELO HORIZONTE',
  '48.449.181/0001-64',
  'A definir',
  'financeiro@locagoraveiculos.com.br',
  '319910997',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floresta'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ABEL JUNIOR LOCACOES LTDA',
  'ABEL JUNIOR LOCACOES LTDA',
  '63.110.649/0001-85',
  'A definir',
  'abeljuniorlocacoes@hotmail.com',
  '51996410246',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ROBERTO SILVA DE OLIVEIRA (BELO HORIZONTE - MG)',
  'ROBERTO SILVA DE OLIVEIRA (BELO HORIZONTE - MG)',
  '48.449.181/0001-64',
  'BELO HORIZONTE, MG. Bairro Flolresta, rua Rua Marechal Deodoro, N¬∫ 293',
  'palestracoachigleagl@gmail.com',
  '11971787828',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floresta'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Bapen Locadora Ltda.',
  'Bapen Locadora Ltda.',
  '63.565.443/0001-40',
  'A definir',
  'lucaspenteado.controle@gmail.com',
  '18997371030',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CARCARA LOCACAO DE MOTOS LTDA',
  'CARCARA LOCACAO DE MOTOS LTDA',
  '59.300.349/0001-91',
  'A definir',
  'pqrosa@icloud.com',
  '11996477913',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOCONECT LTDA',
  'MOTOCONECT LTDA',
  '60.220.502/0001-50',
  'A definir',
  '11976667926',
  '26832091850',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FEROLOC MOTORS LTDA',
  'FEROLOC MOTORS LTDA',
  '60.660.764/0001-35',
  'A definir',
  'ferolocmotors@gmail.com',
  '35997024976',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TRS SOLUCOES EM MOBILIDADE LTDA',
  'TRS SOLUCOES EM MOBILIDADE LTDA',
  '61.535.246/0001-52',
  'A definir',
  'trsmobilidade@gmail.com',
  '11971376666',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOPAMPA NORDESTE LOCACOES LTDA',
  'MOTOPAMPA NORDESTE LOCACOES LTDA',
  '62.158.481/0001-15',
  'A definir',
  'motopampa@hotmail.com',
  '55999416736',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ROTA CERTA LOCACAO DE MOTOS E CONSULTORIA EM TECNOLOGIA DA INFORMACAO LTDA',
  'ROTA CERTA LOCACAO DE MOTOS E CONSULTORIA EM TECNOLOGIA DA INFORMACAO LTDA',
  '62.846.715/0001-17',
  'CAMPINAS , SP. Bairro JARDIM BRASIL, rua AV BRASIL, N¬∫ 807',
  'luiz.cauzzo@gmail.com',
  '1999392356',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'IZZI DO BRASIL LTDA',
  'IZZI DO BRASIL LTDA',
  '56.193.508/0001-08',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Rua Barata Ribeiro, N¬∫ 236',
  'marciosebrian@gmail.com',
  '3198800434',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAMOTOS PR LTDA',
  'LOCAMOTOS PR LTDA',
  '56.125.681/0001-79',
  'A definir',
  'pbleite@hotmail.com',
  '13997313388',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RICHARDS VENDA E LOCACAO DE MOTOCICLETAS LTDA',
  'RICHARDS VENDA E LOCACAO DE MOTOCICLETAS LTDA',
  '58.402.524/0001-99',
  'A definir',
  'adv.fernandorichards+58402524@gmail.com',
  '67981894999',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOS.COM LOCADORA DE MOTOS LTDA',
  'MOTOS.COM LOCADORA DE MOTOS LTDA',
  '56.043.027/0001-16',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Rua Barata Ribeiro, N¬∫ 236',
  'alemotosale@gmail.com',
  '21994740039',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'NOVA VIDA GO LTDA',
  'NOVA VIDA GO LTDA',
  '59.750.283/0001-31',
  'A definir',
  'novavidago@gmail.com',
  '16997677939',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CATEO LOCACAO DE VEICULOS LTDA',
  'CATEO LOCACAO DE VEICULOS LTDA',
  '63.175.835/0001-00',
  'A definir',
  'cateoveiculos@gmail.com',
  '31982777731',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TOPLOC LOCACOES MACEIO LTDA',
  'TOPLOC LOCACOES MACEIO LTDA',
  '61.383.991/0001-23',
  'A definir',
  '54999037070',
  '88165825020',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'L&R LOCACAO DE MOTOS LTDA',
  'L&R LOCACAO DE MOTOS LTDA',
  '62.297.314/0001-55',
  'A definir',
  '11963151732',
  '28723042826',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCA LOPES LTDA',
  'LOCA LOPES LTDA',
  '57.400.364/0001-86',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua RUA BARATA RIBEIRO , N¬∫ 236',
  'felipenora78@gmail.com',
  '21973719779',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LEOBAHR Com√©rcio  LTDA',
  'LEOBAHR Com√©rcio  LTDA',
  '59.655.593/0001-77',
  'R. Barata Ribeiro, 236 - Copacabana',
  'leo.leobahr@gmail.com',
  '1199643522',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ADSUMUS LOCACOES LTDA',
  'ADSUMUS LOCACOES LTDA',
  '60.729.864/0001-70',
  'SALVADOR, BA. Bairro Boca do Rio, rua Avenida Mestre Manoel , N¬∫ 149',
  'manoelbiluca@grupoadsumus.com.br',
  '75982297716',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FUTURA MOTOS LTDA',
  'FUTURA MOTOS LTDA',
  '57.956.603/0001-89',
  'A definir',
  'lfelipeferro@hotmail.com',
  '2196956100',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FBS LOCADORA DE MOTOS LTDA',
  'FBS LOCADORA DE MOTOS LTDA',
  '63.716.077/0001-82',
  'AVENIDA BRASIL, 807 ,JARDIM GUANABARA, CAMPINAS SP',
  'fabiobarfa@gmail.com',
  '11964712864',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CR LOCACAO DE MOTOS LTDA',
  'CR LOCACAO DE MOTOS LTDA',
  '59.706.188/0001-30',
  'A definir',
  'carloslocagora@gmail.com',
  '81982550165',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'NARICA MOTOS LTDA',
  'NARICA MOTOS LTDA',
  '56.126.056/0001-41',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Rua Barata Ribeiro, N¬∫ 236',
  'nrochapina@gmail.com',
  '21991327074',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'HR Motors Ltda',
  'HR Motors Ltda',
  '57.449.674/0001-95',
  'A definir',
  'hrmotors23@gmail.com',
  '11971139595',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MULTILOC ABAETE LTDA',
  'MULTILOC ABAETE LTDA',
  '58.367.774/0001-35',
  'A definir',
  'pedro.lacfs@gmail.com',
  '31991919619',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ZAPPI LOCACAO LTDA',
  'ZAPPI LOCACAO LTDA',
  '61.458.655/0001-00',
  'RIO DE JANEIRO, RJ. Bairro JACAREPAGUA, rua R LUIS SERGIO PERSON, N¬∫ 00000',
  'fabiomol@grupomol.com.br',
  '33999738699',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA A8T SOLUCOES DE MOBILIDADE LTDA',
  'LOCAGORA A8T SOLUCOES DE MOBILIDADE LTDA',
  '62.644.595/0001-75',
  'A definir',
  'th7.herrera@gmail.com',
  '11972632850',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BAZAN LOCA√áOES LTDA',
  'BAZAN LOCA√áOES LTDA',
  '12.745.800/0001-10',
  'A definir',
  'bazan.engenharia@gmail.com',
  '62999670669',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VAI DE MOTO LOCADORA',
  'VAI DE MOTO LOCADORA',
  '61.731.988/0001-53',
  'TERESINA, PI. Bairro Teresina, rua AVENIDA MIGUEL ROSA, TABULETA, N¬∫ 14',
  'candidodj@gmail.com',
  '4198198343',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Teresina'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DALLAS MOTOCICLETAS LOCACOES LTDA',
  'DALLAS MOTOCICLETAS LOCACOES LTDA',
  '62.746.876/0001-39',
  'A definir',
  'aguinaldoecomerce@gmail.com',
  '62994463301',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RRT LOCACOES LTDA',
  'RRT LOCACOES LTDA',
  '57.705.759/0001-97',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Rua Barata Ribeiro, N¬∫ 236',
  'rodrigocofice@gmail.com',
  '31999856777',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TREVISO LOCADORA DE VEICULOS LTDA',
  'TREVISO LOCADORA DE VEICULOS LTDA',
  '62.699.720/0001-44',
  'A definir',
  'treviso.locadora@gmail.com',
  '19998181367',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'REALIZAR LOCACAO DE AUTOMOVEIS LTDA',
  'REALIZAR LOCACAO DE AUTOMOVEIS LTDA',
  '3268997000153',
  'SALVADOR, BA. Bairro Caminho das Arvores , rua AV TANCREDO NEVES, N¬∫ 1189',
  'janf2006@hotmail.com',
  '74991246788',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DAVID DA SILVA LINO - S√ÉO PAULO - SP (SEDE)',
  'DAVID DA SILVA LINO - S√ÉO PAULO - SP (SEDE)',
  '54.681.405/0001-61',
  'A definir',
  'davidsilvalino1@gmail.com',
  '1194869504',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'QUEIROZ FERNANDES CONSULT LTDA',
  'QUEIROZ FERNANDES CONSULT LTDA',
  '61.514.031/0001-55',
  'PORTO ALEGRE, RS. Bairro SAO GERALDO, rua AVENIDA PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'searideconsult@gmail.com',
  '84998821209',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CAVALEIROS DO ASFALTO LTDA - S√©rgio von Tiesenhausen Vaz de Mello - SEDE - SP',
  'CAVALEIROS DO ASFALTO LTDA - S√©rgio von Tiesenhausen Vaz de Mello - SEDE - SP',
  '56.443.840/0001-83',
  'A definir',
  'tvsergio@gmail.com',
  '31983619600',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOKINA LOCACAO LTDA',
  'MOTOKINA LOCACAO LTDA',
  '59.185.505/0001-10',
  'A definir',
  'contato@motokina.com.br',
  '11963073289',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Alexandre Testando',
  'Alexandre Testando',
  '1111111111111',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua R ANNE FRANK, N¬∫ 3687',
  'alexandrepinheiroinovar@gmail.com',
  '7184543967',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BORA DE MOTO LTDA',
  'BORA DE MOTO LTDA',
  '61.332.082/0001-66',
  'CAMPINAS, SP. Bairro GUANABARA, rua AV BRASIL, N¬∫ 807',
  'fdromani19@gmail.com',
  '11970651901',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'R. ICHIWAKI LTDA',
  'R. ICHIWAKI LTDA',
  '59.027.944/0001-03',
  'A definir',
  'ricardo.ichiwaki@gmail.com',
  '11997905275',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'NEVES SENEM LTDA',
  'NEVES SENEM LTDA',
  '56.366.328/0001-80',
  'AV ERNANI DO AMARAL PEIXOTO, 500 Loja 509 Centro - Niter√≥i',
  'contato@nsmotos.com.br',
  '21967451143',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ALUGA MAIS LOCADORA LTDA',
  'ALUGA MAIS LOCADORA LTDA',
  '63.082.817/0001-76',
  'MANAUS, AM. Bairro SAO FRANCISCO, rua R FRANCO DE SA, N¬∫  310',
  'alugamaisloc@gmail.com',
  '47996011570',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Manaus'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCALL - LOCACAO E COMERCIO LTDA',
  'LOCALL - LOCACAO E COMERCIO LTDA',
  '63.427.930/0001-46',
  'A definir',
  '15997698677',
  '39770553808',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Rosemberg Alves Pereira  - Diogo Rezende - Anderson Gomes - Edilson J√∫nior   - RADE LOCACAO DE VEIC',
  'Rosemberg Alves Pereira  - Diogo Rezende - Anderson Gomes - Edilson J√∫nior   - RADE LOCACAO DE VEIC',
  '57.300.756/0001-73',
  'A definir',
  'contato.radelocadora@gmail.com',
  '68999012015',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'KAD21 LOCA√á√ïES LTDA',
  'KAD21 LOCA√á√ïES LTDA',
  '59.397.533/0001-00',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Rua Barata Ribeiro, N¬∫ 236',
  'luciano.kovac@me.com',
  '62999402029',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCNOW LTDA',
  'LOCNOW LTDA',
  '57.791.375/0001-34',
  'SALVADOR, BA. Bairro BOCA DO RIO, rua Av Mestre Manoel, , N¬∫ 149, Sala 04',
  'samantharegis@me.com',
  '71988026433',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FELIX BARBOSA LIMA',
  'FELIX BARBOSA LIMA',
  '61.603.069/0001-02',
  'FLORIAN√ìPOLIS, SC. Bairro CAPOEIRAS, rua RUA WALDEMAR OURIQUES, N¬∫ 549',
  'modelocont@hotmail.com',
  '63999822313',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOC VAI LTDA',
  'LOC VAI LTDA',
  '62.171.302/0001-80',
  'A definir',
  'sandrehandrew@outlook.com',
  '31995390882',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SARA ON WHEELS LOCACAO DE MOTOS LTDA',
  'SARA ON WHEELS LOCACAO DE MOTOS LTDA',
  '61.011.265/0001-80',
  'A definir',
  'elaine_sola@uol.com.br',
  '11996564055',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOC AND GO LTDA',
  'LOC AND GO LTDA',
  '53.282.205/0001-73',
  'SALVADOR, BA. Bairro BOCA DO RIO, rua AV MESTRE MANOEL, N¬∫ 149',
  'locandgo7@gmail.com',
  '77991558000',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOC2GO SOROCITY LTDA',
  'LOC2GO SOROCITY LTDA',
  '62.880.579/0001-81',
  'SOROCABA, SP. Bairro JARDIM FACULDADE, rua RUA ANTONIO DE ANDRADE, N¬∫ 276',
  'leandrodalboncardoso@gmail.com',
  '11966359007',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Sorocaba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RT LOCMAIS AUTO LTDA',
  'RT LOCMAIS AUTO LTDA',
  '57.806.406/0001-83',
  'A definir',
  'rtlocmais@gmail.com',
  '18988226725',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'M2O MOBILIDADE URBANA LTDA',
  'M2O MOBILIDADE URBANA LTDA',
  '62.100.750/0001-92',
  'JO√ÉO PESSOA, PB. Bairro ESTADOS, rua AV PRESIDENTE EPIT√ÅCIO PESSOA, N¬∫ 1251',
  'm2omobilidade@gmail.com',
  '54999447144',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Moto F√°cil Loca√ß√µes LTDA',
  'Moto F√°cil Loca√ß√µes LTDA',
  '60.141.506/0001-42',
  'A definir',
  'roberto.lourenco.sa@gmail.com',
  '62984123363',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PRALOCAR LTDA',
  'PRALOCAR LTDA',
  '17.591.731/3494-18',
  'A definir',
  'pralocarssa@gmail.com',
  '7592067499',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOVE GO',
  'MOVE GO',
  '54.770.153/0001-47',
  'A definir',
  'moveego.ltda@gmail.com',
  '1199490124',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCALL LOCACAO E COMERCIO DE VEICULOS E EQUIPAMENTOS LTDA',
  'LOCALL LOCACAO E COMERCIO DE VEICULOS E EQUIPAMENTOS LTDA',
  '58.181.634/0001-78',
  'A definir',
  'vinicius@bufoni.com.br',
  '11969550201',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DIONISIO LOCA√á√ïES LTDA',
  'DIONISIO LOCA√á√ïES LTDA',
  '58.336.310/0001-61',
  'A definir',
  'erik_dionisio@hotmail.com',
  '67982079797',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'S√ÉO PAULO ( SEDE )',
  'S√ÉO PAULO ( SEDE )',
  '54.248.957/0001-80',
  'A definir',
  'sedesaopaulo@locagoraveiculos.com.br',
  '3184126892',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MF 5.2 MOTOS LTDA',
  'MF 5.2 MOTOS LTDA',
  '57.601.046/0001-83',
  'A definir',
  'rendeiro.filipe@gmail.com',
  '13974100059',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JFLA LOCACOES LTDA',
  'JFLA LOCACOES LTDA',
  '59.206.685/0001-70',
  'A definir',
  'josuefassini@gmail.com',
  '51997244535',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SAMPAIO FREITAS COMERCIO E SERVICOS DE LOCACAO LTDA',
  'SAMPAIO FREITAS COMERCIO E SERVICOS DE LOCACAO LTDA',
  '58.236.596/0001-03',
  'SALVADOR, BA. Bairro CENTRO, rua Av sete de setembro, , N¬∫ 0',
  'locagorasalvador@hotmail.com',
  '71991084444',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA TERESINA LTDA',
  'LOCAGORA TERESINA LTDA',
  '57.741.556/0001-56',
  'TERESINA, PI. Bairro TABULETA, rua AV MIGUEL ROSA, N¬∫ 7500',
  'locagorateresina@gmail.com',
  '98987030142',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Teresina'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAJA LOCACAO E VENDA DE MOTOS LTDA',
  'LOCAJA LOCACAO E VENDA DE MOTOS LTDA',
  '62.963.995/0001-43',
  'A definir',
  'nlocacaomotos@gmail.com',
  '85999004042',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCASAFE LTDA',
  'LOCASAFE LTDA',
  '61.370.068/0001-57',
  'JO√ÉO PESSOA, PB. Bairro Jaguaribe, rua Avenida Vasco da Gama, N¬∫ 379',
  'locasafe.locadora@gmail.com',
  '31991617338',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCA SAO FRANCISCO DE ASSIS LTDA',
  'LOCA SAO FRANCISCO DE ASSIS LTDA',
  '55.485.503/0001-96',
  'A definir',
  'andresouzacunha16@gmail.com',
  '98999761606',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master São Luís do Maranhão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VAJOR MOTORS',
  'VAJOR MOTORS',
  '55.160.657/0001-08',
  'A definir',
  'vanessaantonialli@uol.com.br',
  '11982199872',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'START LOCADORAS DE VEICULOS LTDA',
  'START LOCADORAS DE VEICULOS LTDA',
  '57.899.188/0001-79',
  'A definir',
  'emerson@logisticastart.com',
  '31996322716',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MAFRA LOCADORA DE MOTOCICLETAS',
  'MAFRA LOCADORA DE MOTOCICLETAS',
  '60.381.178/0001-51',
  'A definir',
  'contato@mafrariders.com.br',
  '31971508542',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TG MOTOS LTDA',
  'TG MOTOS LTDA',
  '60.721.696/0001-77',
  'A definir',
  'tiagoloboaz@gmail.com',
  '13997658456',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'A2C LOCACOES LTDA',
  'A2C LOCACOES LTDA',
  '61.705.300/0001-60',
  'A definir',
  'andersonfields@hotmail.com',
  '11992747029',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'WRESENDE SERVICOS E LOCACOES LTDA',
  'WRESENDE SERVICOS E LOCACOES LTDA',
  '60.500.276/0001-60',
  'A definir',
  '3791301340',
  '290312566',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DOMA ANJO LOCACOES LTDA',
  'DOMA ANJO LOCACOES LTDA',
  '61.187.992/0001-00',
  'A definir',
  'marcioaugusto@hotmail.com',
  '21983150184',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RDM LOCACOES LTDA',
  'RDM LOCACOES LTDA',
  '62.235.711/0001-00',
  'A definir',
  'renatorezende01@hotmail.com',
  '31998510660',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCA√á√ÉO MOTOS E EQUIPAMENTOS LTDA',
  'LOCA√á√ÉO MOTOS E EQUIPAMENTOS LTDA',
  '56.050.444/0001-96',
  'A definir',
  'iranilson@hotmail.com',
  '17981481516',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'L11 LOCADORA DE VEICULOS LTDAVenda da franquia R$999 Data de Venda da Franquia',
  'L11 LOCADORA DE VEICULOS LTDAVenda da franquia R$999 Data de Venda da Franquia',
  '57.879.608/0001-55',
  'A definir',
  'desativado@1736528702872x401855263028036740.com',
  '85988341107',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VELOC LTDA',
  'VELOC LTDA',
  '59.266.956/0001-82',
  'A definir',
  'velocagora@outlook.com',
  '31988852749',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ALPHA LOCADORA LTDA',
  'ALPHA LOCADORA LTDA',
  '62.439.438/0001-28',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AV MIGUEL SUTIL, N¬∫ 11990',
  'jonasamazan@ntcviagens.com',
  '11954409529',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DREM MOTOS LTDA',
  'DREM MOTOS LTDA',
  '59.512.597/0001-04',
  'A definir',
  'dremmotosp@gmail.com',
  '1197227690',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TEIMONDE COMPRA E LOCACAO DE MOTOS LTDA',
  'TEIMONDE COMPRA E LOCACAO DE MOTOS LTDA',
  '60.215.231/0001-44',
  'A definir',
  'lealdo+60215231@infonet.com.br',
  '79999724259',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EJC LOCA√á√ÉO E VENDAS DE MOTOS',
  'EJC LOCA√á√ÉO E VENDAS DE MOTOS',
  '54.330.322/0001-28',
  'A definir',
  'ejcmotos@hotmail.com',
  '11952436220',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOC RAPIDO LTDA',
  'LOC RAPIDO LTDA',
  '63.515.397/0001-74',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AVENIDA MIGUEL SUTIL, N¬∫ 11990',
  'rodriguespimenta49@gmail.com',
  '3399977899',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'IPA CONCESSIONARIA DE VEICULOS LTDA - RJ - COPACABANA',
  'IPA CONCESSIONARIA DE VEICULOS LTDA - RJ - COPACABANA',
  '57.007.612/0001-23',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua Rua Barata Ribeiro, N¬∫ 236',
  'loc_comercial@outlook.com',
  '21968641371',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Goi√¢nia - LOCACAO DE MOTOS SELECAO LTDA',
  'Goi√¢nia - LOCACAO DE MOTOS SELECAO LTDA',
  '58.407.937/0001-66',
  'A definir',
  'wendelfaleiroc6@gmail.com',
  '62996529146',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'WF LOCACOES E SERVICOS LTDA',
  'WF LOCACOES E SERVICOS LTDA',
  '61.260.862/0001-48',
  'JO√ÉO PESSOA, PB. Bairro JARDIM OCEANIA, rua RUA SEVERINO NICOLAU DE MELO, N¬∫ 420',
  'locagorawf@gmail.com',
  '83993817929',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ALEXANDRINO & RAMIRES LOCACOES LTDA',
  'ALEXANDRINO & RAMIRES LOCACOES LTDA',
  '57.517.309/0001-70',
  'A definir',
  'aralugueis@hotmail.com',
  '14996193308',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCARBEM LOCADORA DE MOTOS LTDA',
  'LOCARBEM LOCADORA DE MOTOS LTDA',
  '59.936.386/0001-90',
  'A definir',
  'marcelomarchione.mm@gmail.com',
  '11940337892',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'G&P Locadora LTDA',
  'G&P Locadora LTDA',
  '63.165.122/0001-58',
  'A definir',
  '3171912189',
  '9342035639',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MURASERVICE LOCACOES & COMERCIO DE VEICULOS LTDA',
  'MURASERVICE LOCACOES & COMERCIO DE VEICULOS LTDA',
  '58.272.670/0001-47',
  'RIO DE JANEIRO, RJ. Bairro Copacabana , rua barata ribeiro , N¬∫ 236',
  'muraservice.rio+58272670@gmail.com',
  '21971213029',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'UIRAPURU LOCACAO E COMERCIO DE VEICULOS LTDA',
  'UIRAPURU LOCACAO E COMERCIO DE VEICULOS LTDA',
  '58.322.532/0001-25',
  'A definir',
  'fvcdemarco2@hotmail.com',
  '12997341508',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'HUB MOTOS LTDA',
  'HUB MOTOS LTDA',
  '58.333.572/0001-72',
  'SALVADOR, BA. Bairro BOCA DO RIO, rua R, N¬∫ 1',
  'andrecicarelli@gmail.com',
  '73998004688',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GMA PARTICIPACOES LTDA',
  'GMA PARTICIPACOES LTDA',
  '60.691.952/0001-20',
  'A definir',
  'jmsa160212@gmail.com',
  '11952646164',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOC FOR YOU LOCADORA LTDA',
  'LOC FOR YOU LOCADORA LTDA',
  '51.137.580/0001-02',
  'A definir',
  'locagora.zlsp@gmail.com',
  '11939340292',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FERNANDA DE SOUZA PASSOS BATISTA (BELO HORIZONTE - MG)',
  'FERNANDA DE SOUZA PASSOS BATISTA (BELO HORIZONTE - MG)',
  '52.248.735/0001-32',
  'BELO HORIZONTE, MG. Bairro Floresta , rua Rua Marechal Deodoro, N¬∫ 293',
  'mariobatista4@gmail.com',
  '61992583525',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Belo Horizonte'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ML3 LOCADORA DE VEICULOS LTDA',
  'ML3 LOCADORA DE VEICULOS LTDA',
  '5777481000011',
  'A definir',
  'ml3locadoradeveiculos@gmail.com',
  '1691810296',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SPEED CONNECT SOLUCOES LTD',
  'SPEED CONNECT SOLUCOES LTD',
  '58.891.650/0001-54',
  'A definir',
  'arthur.unec@gmail.com',
  '33988372547',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'KAP MOTOS LOCACOES LTDA',
  'KAP MOTOS LOCACOES LTDA',
  '47.768.409/0001-16',
  'RIO DE JANEIRO, RJ. Bairro SANTA ROSA , rua RUA DESEMBARGADOR FELICIO PANZA, N¬∫ 45',
  'daniloloria17+47768409@gmail.com',
  '2199562370',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CORSO MOTORS LTDA',
  'CORSO MOTORS LTDA',
  '60.779.091/0001-37',
  'A definir',
  'corsogroup23@gmail.com',
  '85991420973',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TM LOCACOES E VENDAS DE VEICULOS LTDA',
  'TM LOCACOES E VENDAS DE VEICULOS LTDA',
  '61.735.090/0001-53',
  'A definir',
  'tmlocacoes2025@gmail.com',
  '81982996960',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VAI DE MOTO LOCACAO E SERVICOS LTDA',
  'VAI DE MOTO LOCACAO E SERVICOS LTDA',
  '61.960.443/0001-19',
  'JO√ÉO PESSOA, PB. Bairro ESTADOS, rua AVENIDA PRESIDENTE EPIT√ÅCIO PESSOA, N¬∫ 1251',
  'vaidemoto.joaopessoa@gmail.com',
  '11998197339',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CBG LOCACAO E SERVICOS LTDA',
  'CBG LOCACAO E SERVICOS LTDA',
  '5700888400014',
  'A definir',
  'castro.cesaraugusto@gmail.com',
  '32984219516',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LL LOCACAO E COMERCIO DE MOTOCICLETAS LTDA',
  'LL LOCACAO E COMERCIO DE MOTOCICLETAS LTDA',
  '58.389.599/0001-87',
  'A definir',
  'llmotos79@gmail.com',
  '31983898282',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'HBL LOCA√á√ïES LTDA',
  'HBL LOCA√á√ïES LTDA',
  '62.246.437/0001-20',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AV. MIGUEL SUTIL, N¬∫ 11990',
  'admhperoba@gmail.com',
  '65993194125',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'J&M LOCACOES LTDA',
  'J&M LOCACOES LTDA',
  '58.287.300/0001-83',
  'A definir',
  'jemlocacoes@yahoo.com',
  '31988851084',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DSF LOCACOES LTDA',
  'DSF LOCACOES LTDA',
  '57.190.095/0001-70',
  'A definir',
  'daniellemessordi@gmail.com',
  '11950003466',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'KABRUTA MOTOS LTDA',
  'KABRUTA MOTOS LTDA',
  '54.809.267/0001-53',
  'A definir',
  'locagora.praiagrande@gmail.com',
  '11951500405',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Locadora 10X',
  'Locadora 10X',
  '57.753.039/0001-05',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Rua Barata Ribeiro, N¬∫ 236',
  'belmontrj@gmail.com',
  '21994490068',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PRIME RENT A MOTORCYCLE LTDA',
  'PRIME RENT A MOTORCYCLE LTDA',
  '63.514.254/0001-48',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AVENIDA MIGUEL SUTIL, N¬∫ 11990',
  'leandro_giacomini@hotmail.com',
  '1196225932',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DEIRIMAR SUCUPIRA SAMPAIO',
  'DEIRIMAR SUCUPIRA SAMPAIO',
  '6916490000157',
  'A definir',
  'deirimarsucupira@gmail.com',
  '85932445892',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RINALDO APARECIDO PAIVA NOGUEIRA',
  'RINALDO APARECIDO PAIVA NOGUEIRA',
  '62.280.397/0001-70',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua R ANNE FRANK, N¬∫ 3687',
  'contato@joaonogueira.arq.br',
  '44999046116',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  '2MB LOCADORA LTDA',
  '2MB LOCADORA LTDA',
  '61.043.868/0001-63',
  'A definir',
  'guilhermedecastrosarmento@hotmail.com',
  '31971912189',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ROMUALDO TRANSPORTES LTDA',
  'ROMUALDO TRANSPORTES LTDA',
  '58.112.074/0001-08',
  'A definir',
  'fabiano@pontoioutdoor.com.br',
  '3192920473',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCGO MOTOS LOCACAO DE MOTOS  E EQUIPAMENTOS LTDA',
  'LOCGO MOTOS LOCACAO DE MOTOS  E EQUIPAMENTOS LTDA',
  '61.460.210/0001-57',
  'A definir',
  'locgomotosad@gmail.com',
  '11945598462',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'A. R. N. LOCACAO DE VEICULOS LTDA',
  'A. R. N. LOCACAO DE VEICULOS LTDA',
  '57.362.223/0001-16',
  'S√ÉO PAULO, SP. Bairro Lim√£o, rua Av. Prof. Celestino Bourroul, N¬∫ 581',
  'locagora.arn@gmail.com',
  '11942683989',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BARBOSA E ALMEIDA LOCACOES LTDA',
  'BARBOSA E ALMEIDA LOCACOES LTDA',
  '62.043.610/0001-20',
  'JO√ÉO PESSOA, PB. Bairro ESTADOS, rua AVENIDA PRESIDENTE EPIT√ÅCIO PESSOA, N¬∫ 1251',
  'locagora.paraiba@gmail.com',
  '84996769998',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOITU COMERCIO E LOCACAO DE MOTOS LTDA',
  'MOTOITU COMERCIO E LOCACAO DE MOTOS LTDA',
  '60.021.092/0001-18',
  'A definir',
  'christo@terra.com.br',
  '1199802226',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TBS LOCADORA',
  'TBS LOCADORA',
  '54.978.265/0001-98',
  'A definir',
  'aldenytiago@yahoo.com.br',
  '11972683794',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ROTA ON LTDA',
  'ROTA ON LTDA',
  '63.521.106/0001-50',
  'MANAUS, AM. Bairro Santa Etelvina, rua Av. Mulateiro, N¬∫ 1069',
  'sorayacosta21@gmail.com',
  '11951435001',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Manaus'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EMEALU LOCACOES LTDA',
  'EMEALU LOCACOES LTDA',
  '58.329.073/0001-01',
  'A definir',
  'ti-co13@hotmail.com',
  '11942219264',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RENATO SCHLAG 71382690134',
  'RENATO SCHLAG 71382690134',
  '43.531.031/0001-81',
  'BRAGAN√áA PAULISTA, SP. Bairro Centro, rua Av Antonio Pires Pimentel, 865, N¬∫ 865',
  'rschlag@gmail.com',
  '62991020605',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Renato Rodrigues Marquesim - Apoio Empresarial Marquesim -SP Freguesia do √≥',
  'Renato Rodrigues Marquesim - Apoio Empresarial Marquesim -SP Freguesia do √≥',
  '36.363.423/0001-13',
  'A definir',
  'rmarquesim@gmail.com',
  '11973350199',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GM3 LOCACAO DE MOTOS LTDA',
  'GM3 LOCACAO DE MOTOS LTDA',
  '60.482.103/0001-67',
  'A definir',
  'giovanam@hotmail.com',
  '31999129687',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'X3 MOTOS LTDA',
  'X3 MOTOS LTDA',
  '61.187.132/0001-69',
  'A definir',
  '11996235539',
  '31170805892',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JESSICA BRITTO LOCACOES E SERVICOS LTDA',
  'JESSICA BRITTO LOCACOES E SERVICOS LTDA',
  '61.315.976/0001-48',
  'A definir',
  'gbbjunior@hotmail.com',
  '75988282700',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOFAST RENTAL LTDA',
  'MOTOFAST RENTAL LTDA',
  '57.929.282/0001-23',
  'RIO DE JANEIRO, RJ. Bairro Copacabana , rua Barata ribeiro , N¬∫ 236',
  'motofast.contato@gmail.com',
  '11947103325',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'KILLIAN LOCACAO DE VEICULOS LTDA',
  'KILLIAN LOCACAO DE VEICULOS LTDA',
  '62.228.152/0001-01',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua R ANNE FRANK, N¬∫ 3687',
  'ldin1612@gmail.com',
  '11984843557',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RODOLFO VICTOR RIBEIRO',
  'RODOLFO VICTOR RIBEIRO',
  '60.821.271/0001-30',
  'SALVADOR, BA. Bairro BOCA DO RIO, rua Avenida Mestre Manoel , N¬∫ 149',
  'rodolfolocagora@gmail.com',
  '31991207797',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MONTE ALEGRA LOCACAO DE VEICULOS LTDA',
  'MONTE ALEGRA LOCACAO DE VEICULOS LTDA',
  '57.084.572/0001-13',
  'A definir',
  'cadu.gouveia.silva@gmail.com',
  '11965581773',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MH LOCACOES LTDA',
  'MH LOCACOES LTDA',
  '59.675.296/0001-93',
  'A definir',
  'figueiredomarcello71@gmail.com',
  '31982955665',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MN RENT A BIKE LTDA',
  'MN RENT A BIKE LTDA',
  '56.120.962/0001-39',
  'BRAS√çLIA, DF. Bairro SCIA, rua ST SCIA Q 15 CJ 4 LT 10, N¬∫ LT 10',
  'locagorabsb@gmail.com',
  '6199421994',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCSIMPLES LTDA',
  'LOCSIMPLES LTDA',
  '62.383.974/0001-59',
  'JO√ÉO PESSOA, PB. Bairro EXPEDICION√ÅRIOS, rua AV J√öLIA FREIRE, N¬∫ 1200',
  'locsimplesltda@gmail.com',
  '83996472319',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MGSL LOCADORA LTDA ME',
  'MGSL LOCADORA LTDA ME',
  '57.466.247/0001-15',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Rua Barata Ribeiro, N¬∫ 236',
  'rmurauskas@hotmail.com',
  '11941554857',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Marco Aur√©lio Nascimento Simas - S√£o Paulo (Sede) Freguesia',
  'Marco Aur√©lio Nascimento Simas - S√£o Paulo (Sede) Freguesia',
  '57.208.950/0001-23',
  'A definir',
  'marcosimas2013@gmail.com',
  '71999709988',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ABREU LOCACOES DE MOTOS LTDA',
  'ABREU LOCACOES DE MOTOS LTDA',
  '56.960.825/0001-02',
  'A definir',
  'abreu.locacaomoto@gmail.com',
  '11947774827',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MARCELO DE ARAG√ÉO PEREIRA E SILVA (BELO HORIZONTE - MG)',
  'MARCELO DE ARAG√ÉO PEREIRA E SILVA (BELO HORIZONTE - MG)',
  '52.272.843/0001-40',
  'BELO HORIZONTE, MG. Bairro Floresta, rua Rua Marechal Deodoro , N¬∫ 293',
  'zaragao+52272843@gmail.com',
  '31986410006',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floresta'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'J & A LOCACOES LTDA',
  'J & A LOCACOES LTDA',
  '58.145.295/0001-74',
  'A definir',
  'augusto_danelon@hotmail.com',
  '11945512542',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'APT LOCACOES LTDA',
  'APT LOCACOES LTDA',
  '60.975.805/0001-82',
  'SALVADOR, BA. Bairro Boca do Rio , rua Avenida Mestre Manoel , N¬∫ 149',
  'aptloc83@gmail.com',
  '61991470855',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOVE FONSECA LTDA',
  'MOVE FONSECA LTDA',
  '61.446.836/0001-09',
  'A definir',
  'edermarce2@yahoo.com.br',
  '11991053077',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'F4F MOTORS',
  'F4F MOTORS',
  '56.383.476/0001-03',
  'S√ÉO PAULO, SP. Bairro Lim√£o, rua Av. Prof. Celestino Bourroul, N¬∫ 581',
  'santiago.alessandra01@gmail.com',
  '94981522200',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TETRIS URBANO LOCACOES LTDA',
  'TETRIS URBANO LOCACOES LTDA',
  '62.234.739/0001-15',
  'BRAGAN√áA PAULISTA, SP. Bairro CENTRO, rua AVENIDA ANTONIO PIRES PIMENTEL, N¬∫ 865',
  'tetris.urbano@gmail.com',
  '11995887858',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA S√ÉO PAULO LTDA',
  'LOCAGORA S√ÉO PAULO LTDA',
  '5424895700',
  'A definir',
  'priscila.ladeia@locgrupo.com.br',
  '',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LP LOCADORA LTDA',
  'LP LOCADORA LTDA',
  '59.206.716/0001-92',
  'A definir',
  'diegofozzy@gmail.com',
  '31996001700',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GONCALVES FOLLY LOCACOES LTDA',
  'GONCALVES FOLLY LOCACOES LTDA',
  '60.846.587/0001-86',
  'A definir',
  'igor.follyp@gmail.com',
  '24999072866',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ROBSON JOSE SALAMONI',
  'ROBSON JOSE SALAMONI',
  '62.778.670/0001-90',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AV MIGUEL SUTIL, N¬∫ 11990',
  'robsonsalamoni@gmail.com',
  '65999871871',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ITAMAR CARLOS DE MORAIS - S√ÉO PAULO - SP',
  'ITAMAR CARLOS DE MORAIS - S√ÉO PAULO - SP',
  '53.595.452/0001-20',
  'A definir',
  'stopcar101@hotmail.com',
  '1196647480',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RAPHAELA G. S. FRANCA LOCACAO E CONSULTORIA LTDA.',
  'RAPHAELA G. S. FRANCA LOCACAO E CONSULTORIA LTDA.',
  '62.192.369/0001-09',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua R ANNE FRANK, N¬∫ 3687',
  'rei_bastos@yahoo.com.br',
  '11985993979',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'IN LOCMOTOS LOCACOES LTDA',
  'IN LOCMOTOS LOCACOES LTDA',
  '59.131.108/0001-66',
  'A definir',
  'inlocmotos@gmail.com',
  '62985055461',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'R&2R LOCADORA DE VEICULOS LTDA',
  'R&2R LOCADORA DE VEICULOS LTDA',
  '61.636.482/0001-65',
  'RIO DE JANEIRO, RJ. Bairro JACAREPAGUA, rua RUA LUIS SERGIO PERSON, N¬∫ 127',
  'ricardogouveia3496@instagram.com',
  '21964733496',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Sell Locamotos Locacao e Comercio de Veiculos e Equipamentos LTDA',
  'Sell Locamotos Locacao e Comercio de Veiculos e Equipamentos LTDA',
  '59.073.187/0001-04',
  'S√ÉO PAULO, SP. Bairro Freguesia do √ì, rua Rua Ribeiro de Morais, N¬∫ 211',
  'guilherme.silva@sellimoveis.com.br',
  '11983539838',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EU QUERO MOTO LTDA',
  'EU QUERO MOTO LTDA',
  '61.778.085/0001-28',
  'BRAGAN√áA PAULISTA, SP. Bairro CENTRO, rua AV ANTONIO PIRES PIMENTEL, N¬∫ 865',
  'valtermanfrojr@gmail.com',
  '47996167506',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LP COUTINHO LOCACOES LTDA',
  'LP COUTINHO LOCACOES LTDA',
  '59.482.767/0001-47',
  'A definir',
  'luizinhoquental59@gmail.com',
  '81999244064',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MAXEN LOCACOES LTDA',
  'MAXEN LOCACOES LTDA',
  '61.913.875/0001-79',
  'FLORIAN√ìPOLIS, SC. Bairro COLONINHA, rua RUA WALDEMAR OURIQUES, N¬∫ 549',
  'maxenlocacoes@gmail.com',
  '11994553195',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SISI LOCACAO E COMERCIO DE MOTOS LTDA',
  'SISI LOCACAO E COMERCIO DE MOTOS LTDA',
  '58.455.820/0001-58',
  'A definir',
  'eduardo.piccelli@gmail.com',
  '11996083818',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOPASS LTDA',
  'MOTOPASS LTDA',
  '57.788.145/0001-16',
  'A definir',
  'ricardomoliveira@terra.com.br',
  '1198203819',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LIVRE LOCADORA LTDA',
  'LIVRE LOCADORA LTDA',
  '62.386.373/0001-08',
  'A definir',
  'livrelocadora2025@hotmail.com',
  '11964090137',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CRISTIANA OLIVEIRA MARIANO SILVA LTDA',
  'CRISTIANA OLIVEIRA MARIANO SILVA LTDA',
  '54.018.173/0001-66',
  'A definir',
  'mariano.dudacavalaria77@gmail.com',
  '1194715647',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PMB MOBILIDADE LTDA',
  'PMB MOBILIDADE LTDA',
  '62.059.152/0001-17',
  'JO√ÉO PESSOA, PB. Bairro ESTADOS, rua AVENIDA PRESIDENTE EPIT√ÅCIO PESSOA, N¬∫ 1251',
  'paulomobento0507@gmail.com',
  '11994632734',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VILLASERV LTDA',
  'VILLASERV LTDA',
  '61.637.007/0001-03',
  'A definir',
  'rodrigovillaron@gmail.com',
  '12991751891',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MIRIADE LOCACOES LTDA',
  'MIRIADE LOCACOES LTDA',
  '59.482.204/0001-59',
  'A definir',
  'geizon.sa@gmail.com',
  '9499690539',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CARDOSO &  SIM√ÉO LOCACOES LTDA',
  'CARDOSO &  SIM√ÉO LOCACOES LTDA',
  '58.084.802/0001-07',
  'A definir',
  'marcelosantos1012@gmail.com',
  '11981462909',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  '19RACING LTDA',
  '19RACING LTDA',
  '61.754.513/0001-82',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua R ANNE FRANK, N¬∫ 3687',
  'bel.magrini@gmail.com',
  '11999686664',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ERE LOCACOES LTDA',
  'ERE LOCACOES LTDA',
  '59.971.072/0001-29',
  'A definir',
  'erelocadora@gmail.com',
  '11999014523',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCMOTORS LOCACAO DE VEICULOS AUTOMOTORES LTDA',
  'LOCMOTORS LOCACAO DE VEICULOS AUTOMOTORES LTDA',
  '55.442.965/0001-26',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua R. Barata Ribeiro, N¬∫ 236',
  'fabio_moncao@yahoo.com.br',
  '21976320992',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SSA MOTOS E SERVICOS LTDA',
  'SSA MOTOS E SERVICOS LTDA',
  '56.906.578/0001-66',
  'A definir',
  'josealvesthiagoabreu@gmail.com',
  '13996711643',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BOARO LOCACOES LTDA',
  'BOARO LOCACOES LTDA',
  '60.797.541/0001-14',
  'A definir',
  'patricia_boaro@live.com',
  '11942721019',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCMOTO RIBEIRAO LTDA',
  'LOCMOTO RIBEIRAO LTDA',
  '59.935.974/0001-00',
  'A definir',
  'junior1706@hotmail.com',
  '11947074062',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'M M DOS SANTOS BRYLOG',
  'M M DOS SANTOS BRYLOG',
  '60.570.738/0001-16',
  'A definir',
  '11941423862',
  '41575105500',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'COMERCIAL PINHEIRO LTDA (Evandro Pinheiro)  S√ÉO PAULO - SP (SEDE)',
  'COMERCIAL PINHEIRO LTDA (Evandro Pinheiro)  S√ÉO PAULO - SP (SEDE)',
  '21.070.311/0001-05',
  'A definir',
  'evandrosupreme@yahoo.com',
  '1198201682',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PETREA VENTURES LOCACOES LTDA',
  'PETREA VENTURES LOCACOES LTDA',
  '59.522.008/0001-60',
  'A definir',
  'petrealocacoes@gmail.com',
  '11973558775',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ALGA LOCADORA LTDA',
  'ALGA LOCADORA LTDA',
  '62.248.187/0001-02',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua RUA ANNE FRANK, N¬∫ 3687',
  'algacir.oliveira@outlook.com',
  '45991545354',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTO SHI LOCACOES LTDA',
  'MOTO SHI LOCACOES LTDA',
  '60.968.498/0001-02',
  'A definir',
  '4184123790',
  '58937137968',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ROTA28 ALUGUEL DE MOTOS LTDA',
  'ROTA28 ALUGUEL DE MOTOS LTDA',
  '57.332.699/0001-04',
  'A definir',
  'admin@rota28motos.com.br',
  '11913620187',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SG LOCACAO DE VEICULOS LTDA',
  'SG LOCACAO DE VEICULOS LTDA',
  '62.091.615/0001-28',
  'A definir',
  'thiagoranaxx@hotmail.com',
  '62981031835',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FE LOCACOES LTDA',
  'FE LOCACOES LTDA',
  '62.156.811/0001-33',
  'SALVADOR, BA. Bairro CAMINHO DAS ARVORES, rua AV TANCREDO NEVES, N¬∫ 001189',
  'franciscoedson2000+62156811@yahoo.com.br',
  '7592067499',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Feira de Santana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCNOW EQUIPAMENTOS LTDA',
  'LOCNOW EQUIPAMENTOS LTDA',
  '56.987.537/0001-41',
  'A definir',
  'lucasgiannotti86@gmail.com',
  '11987792813',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Motocycle Locadora',
  'Motocycle Locadora',
  '57.463.430/0001-67',
  'A definir',
  'motocyclelocadora@gmail.com',
  '11934064529',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Alexandre Teste',
  'Alexandre Teste',
  '57400364000',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua R ANNE FRANK, N¬∫ 3687',
  'alexandrepinheiroinovar+57400364@gmail.com',
  '111111',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCA MAIS LTDA',
  'LOCA MAIS LTDA',
  '57.138.081/0001-08',
  'A definir',
  'desativado@1730468529078x999653901431672300.com',
  '1199990808',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EMEALIMA LOCACAO E COMERCIO DE VEICULOS LTDA',
  'EMEALIMA LOCACAO E COMERCIO DE VEICULOS LTDA',
  '58.389.720/0001-70',
  'A definir',
  'emealima@gmail.com',
  '11996771237',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JULIANI E PEREIRA LTDA',
  'JULIANI E PEREIRA LTDA',
  '62.320.812/0001-71',
  'A definir',
  'fabianpiegas@hotmail.com',
  '63999356583',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOPES E BRITO MOBILIDADE LTDA',
  'LOPES E BRITO MOBILIDADE LTDA',
  '62.191.412/0001-03',
  'SALVADOR, BA. Bairro CAMINHO DAS ARVORES, rua AV TANCREDO NEVES, N¬∫ 000620',
  'bruno@lopadvogados.adv.br',
  '71993277964',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'K. GABRIEL CALLE YOUNG LTDA',
  'K. GABRIEL CALLE YOUNG LTDA',
  '63.733.319/0001-46',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AV MIGUEL SUTIL, N¬∫ 11990',
  'karimgabriel71@gmail.com',
  '11985668706',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GALOFARO BERTOLAMI SOLUCOES LTDA',
  'GALOFARO BERTOLAMI SOLUCOES LTDA',
  '61.529.615/0002-85',
  'A definir',
  'abertolami@sbclaw.com.br',
  '11991988415',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'COIMBRA MOTOS LTDA',
  'COIMBRA MOTOS LTDA',
  '58.050.811/0001-87',
  'TERESINA, PI. Bairro  tabuleta , rua Avenida Miguel Rosa , N¬∫ 7500',
  'airamcross@hotmail.com',
  '99999059761',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Teresina'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DW LOCADORA LTDA',
  'DW LOCADORA LTDA',
  '58.222.812/0001-61',
  'A definir',
  'dwlocadora@gmail.com',
  '41985017156',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PAZ MORAES LOCADORA DE VEICULOS LTDA',
  'PAZ MORAES LOCADORA DE VEICULOS LTDA',
  '61.674.730/0001-62',
  'PORTO ALEGRE, RS. Bairro S√ÉO GERALDO, rua AV PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'cmoraes05@gmail.com',
  '11992007209',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MM consultoria e servi√ßo',
  'MM consultoria e servi√ßo',
  '54.337.095/0001-62',
  'A definir',
  'marciosantos.martines@gmail.com',
  '11957838348',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCADORA HEROI LTDA',
  'LOCADORA HEROI LTDA',
  '59.248.000/0001-58',
  'A definir',
  'locadoraheroiltda@gmail.com',
  '31996530410',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CM LOCACOES BRASIL LTDA',
  'CM LOCACOES BRASIL LTDA',
  '61.538.024/0001-93',
  'A definir',
  'camillo.junior@uol.com.br',
  '11994723036',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AG8 ASSESSORIA E GERENCIAMENTO DESPORTIVO LTDA',
  'AG8 ASSESSORIA E GERENCIAMENTO DESPORTIVO LTDA',
  '48.831.825/0001-84',
  'A definir',
  '16996272161',
  '9096349806',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JPM LOCACOES LTDA',
  'JPM LOCACOES LTDA',
  '58.800.369/0001-69',
  'A definir',
  'leo_coletto@yahoo.com.br',
  '61999453048',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTO LEASE LTDA',
  'MOTO LEASE LTDA',
  '60.259.729/0001-09',
  'A definir',
  'wmalmeidajr@gmail.com',
  '11970370257',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EJC LOCACAO DE AUTOMOVEIS LTDA',
  'EJC LOCACAO DE AUTOMOVEIS LTDA',
  '57.074.532/0001-90',
  'A definir',
  'eduardocasquet@gmail.com',
  '11980140620',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SENFER LOCA√á√ÉO E COMERCIO DE PE√áAS LTDA',
  'SENFER LOCA√á√ÉO E COMERCIO DE PE√áAS LTDA',
  '58.476.644/0001-30',
  'A definir',
  'senferlocagora@gmail.com',
  '11972835589',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'H4S SERVICO DE LOCACAO DE MOTOS LTDA',
  'H4S SERVICO DE LOCACAO DE MOTOS LTDA',
  '58.935.205/0001-49',
  'SALVADOR, BA. Bairro CAMINHO DAS ARVORES , rua AV TANCREDO NEVES, N¬∫ 1189',
  'h4s.contas@gmail.com',
  '11981056261',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'A5 LOCACAO DE  AUTOMOVEIS  LTDA',
  'A5 LOCACAO DE  AUTOMOVEIS  LTDA',
  '24.416.730/0001-36',
  'BRAGAN√áA PAULISTA, SP. Bairro JARDIM PROENCA, rua AVENIDA PRINCESA D''OESTE 1295, N¬∫ 1295',
  'a5locmotos@gmail.com',
  '41992230323',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VS LOCADORA LTDA',
  'VS LOCADORA LTDA',
  '60.518.591/0001-15',
  'A definir',
  '49999850225',
  '64961648949',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'M. B. R. - LOCACAO E COMERCIO LTDA',
  'M. B. R. - LOCACAO E COMERCIO LTDA',
  '5794034900012',
  'BELO HORIZONTE, MG. Bairro Floresta, rua Rua Marechal Deodoro, N¬∫ 293',
  'alvaronetodublin@gmail.com',
  '82991327272',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Belo Horizonte'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCACAO DE MOTOS SELECAO LTDA',
  'LOCACAO DE MOTOS SELECAO LTDA',
  '58.407.937/0001-66',
  'A definir',
  'locmotosselecao@gmail.com',
  '62996529146',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ROTA SAMPA',
  'ROTA SAMPA',
  '55.081.317/0001-91',
  'A definir',
  'rotasampalocacoes@gmail.com',
  '31997646494',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RENT MOTOS LTDA',
  'RENT MOTOS LTDA',
  '58.646.542/0001-16',
  'RIO DE JANEIRO, RJ. Bairro Copacabana , rua BARATA RIBEIRO , N¬∫ 236',
  'pedrofilipemdg@gmail.com',
  '21987991171',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RPP LOCADORA LTDA',
  'RPP LOCADORA LTDA',
  '60.103.805/0001-92',
  'A definir',
  'alepiccirillo@yahoo.com.br',
  '1194795226',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA MR8 LOCADORA DE VEICULOS LTDA',
  'LOCAGORA MR8 LOCADORA DE VEICULOS LTDA',
  '57.652.819/0001-50',
  'S√ÉO PAULO, SP. Bairro Lim√£o, rua Av. Prof. Celestino Bourroul, N¬∫ 581',
  'marilza.transpex@gmail.com',
  '11986820573',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'M.A MOTORS COMERCIO E LOCACAO DE VEICULOS LTDA',
  'M.A MOTORS COMERCIO E LOCACAO DE VEICULOS LTDA',
  '61.363.765/0001-80',
  'A definir',
  'felipemartins1012@yahoo.com.br',
  '16991426613',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DE FARIAS SOLUCOES E SERVICOS LTDA',
  'DE FARIAS SOLUCOES E SERVICOS LTDA',
  '60.789.689/0001-07',
  'A definir',
  '11991361949',
  '27194122871',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PIRES MATUCK LOCACOES E COMERCIO LTDA',
  'PIRES MATUCK LOCACOES E COMERCIO LTDA',
  '58.335.825/0001-47',
  'A definir',
  'nandomatuck@hotmail.com',
  '35991028997',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JDW LOCACOES LTDA',
  'JDW LOCACOES LTDA',
  '56.950.318/0001-98',
  'A definir',
  'jdwlocacoes@hotmail.com',
  '45998334930',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DFSB Locadora',
  'DFSB Locadora',
  '57.485.181/0001-00',
  'A definir',
  'danielfsb@hotmail.com',
  '11981393230',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOLOC LTDA',
  'MOTOLOC LTDA',
  '5718366400015',
  'A definir',
  'marcusreis085@gmail.com',
  '1999776400',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RMORAES PARTICIPACOES LTDA',
  'RMORAES PARTICIPACOES LTDA',
  '59.944.807/0001-25',
  'A definir',
  '31998183440',
  '11423561759',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'J.A LOCA√á√ïES',
  'J.A LOCA√á√ïES',
  '55.086.467/0001-98',
  'A definir',
  'luana.merli@marianarui.com.br',
  '4491280755',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BCG LOCACOES LTDA',
  'BCG LOCACOES LTDA',
  '62.589.814/0001-60',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AV MIGUEL SUTIL, N¬∫ 11990',
  'betogomes@bcgeventos.com.br',
  '27999819797',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VALENTIM INVESTIMENTOS E PARTICIPACOES LTDA',
  'VALENTIM INVESTIMENTOS E PARTICIPACOES LTDA',
  '54.965.366/0001-24',
  'A definir',
  'valentimlocagora@gmail.com',
  '19992723901',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MAFE RIDE LOC LTDA',
  'MAFE RIDE LOC LTDA',
  '63.346.416/0001-86',
  'A definir',
  'fhsantos2004@gmail.com',
  '31985437402',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MATCH MOTORS LTDA',
  'MATCH MOTORS LTDA',
  '61.818.436/0001-87',
  'A definir',
  'carolvitori1@gmail.com',
  '6193087467',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MORENO & MACHADO LOCACAO LTDA',
  'MORENO & MACHADO LOCACAO LTDA',
  '63.359.153/0001-40',
  'SOROCABA, SP. Bairro JARDIM FACULDADE, rua R ANTONIO DE ANDRADE, N¬∫ 276',
  'morenoemachado@gmail.com',
  '41992443321',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Sorocaba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTO VOLARE LTDA',
  'MOTO VOLARE LTDA',
  '58.077.415/0001-43',
  'CURITIBA, PR. Bairro Hauer, rua Anne Frank, N¬∫ 3687',
  'motovolare24@gmail.com',
  '8281213464',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOOVELOK APP INOVA SIMPLES (I.S.)',
  'MOOVELOK APP INOVA SIMPLES (I.S.)',
  '62.245.277/0001-31',
  'JO√ÉO PESSOA, PB. Bairro JAGUARIBE, rua AV CAPITAO JOSE PESSOA, N¬∫ 379',
  'moovelok@gmail.com',
  '81999169550',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOBO LOCADORA DE MOTOS LTDA',
  'LOBO LOCADORA DE MOTOS LTDA',
  '5691004600010',
  'A definir',
  'locagoralobolocadora@gmail.com',
  '77999610622',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'YAMASHITA  LOCACAO DE EQUIPAMENTOS  LTDA',
  'YAMASHITA  LOCACAO DE EQUIPAMENTOS  LTDA',
  '61.485.950/0001-48',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua R BARATA RIBEIRO, N¬∫ 00236',
  'solangemyamashita@gmail.com',
  '11984294741',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ROCCIA LOCACOES E SERVICOS LTDA',
  'ROCCIA LOCACOES E SERVICOS LTDA',
  '60.520.508/0001-42',
  'A definir',
  'matheus.rocha.assis@gmail.com',
  '31992620157',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MLS LTDA',
  'MLS LTDA',
  '63.088.596/0001-43',
  'JO√ÉO PESSOA, PB. Bairro ESTADOS, rua AV PRESIDENTE EPIT√ÅCIO PESSOA, N¬∫ 1251',
  'magnoladeira9@gmail.com',
  '21981182903',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'M E M LOCA√á√ïES DE MOTOS LTDA',
  'M E M LOCA√á√ïES DE MOTOS LTDA',
  '55.581.159/0001-39',
  'A definir',
  'mmstransportes@yahoo.com',
  '31988851084',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JL LOCACOES LTDA',
  'JL LOCACOES LTDA',
  '59.970.394/0001-53',
  'R. Barata Ribeiro, 236 - Copacabana',
  'lenzij@gmail.com',
  '21991371179',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EAS LOCADORA DE MOTOS LTDA',
  'EAS LOCADORA DE MOTOS LTDA',
  '63.046.001/0001-97',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AV MIGUEL SUTIL, N¬∫ 11990',
  'eronicefoz@gmail.com',
  '48999782315',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA CUIABA LOCADORA VEICULOS',
  'LOCAGORA CUIABA LOCADORA VEICULOS',
  '61.779.311/0001-95',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AV MIGUEL SUTIL, N¬∫ 11990',
  'rodrigoeliasdomingos@gmail.com',
  '6581270125',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOPRIME LOCADORA DE VEICULOS LTDA',
  'MOTOPRIME LOCADORA DE VEICULOS LTDA',
  '62.893.593/0001-10',
  'SOROCABA, SP. Bairro JARDIM FACULDADE, rua ANTONIO DE ANDADRE, N¬∫ 276',
  'motoprime.locadora@gmail.com',
  '11986783650',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Sorocaba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RENATO OLIVEIRA LOCACOES LTDA',
  'RENATO OLIVEIRA LOCACOES LTDA',
  '58.881.099/0001-68',
  'A definir',
  'renatoteodorooliveira2@gmail.com',
  '31985377854',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'A.C. LOCA√á√ïES LTDA',
  'A.C. LOCA√á√ïES LTDA',
  '60.672.063/0001-07',
  'A definir',
  'aclocacoes25@gmail.com',
  '81988884040',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'NRF MULTI SERVICOS & LOCACAO LTDA',
  'NRF MULTI SERVICOS & LOCACAO LTDA',
  '61.182.837/0001-93',
  'A definir',
  'rafanelson@hotmail.com',
  '1180634249',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CARVALHO LOCACOES LTDA',
  'CARVALHO LOCACOES LTDA',
  '62.112.013/0001-00',
  'FLORIAN√ìPOLIS, SC. Bairro CAPOEIRAS, rua RUA WALDEMAR OURIQUES K49501, N¬∫ 549',
  'dralbertojr8@icloud.com',
  '21972221472',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JP LOCMOTOS LTDA',
  'JP LOCMOTOS LTDA',
  '60.218.068/0001-73',
  'SALVADOR, BA. Bairro Boca do rio , rua Mestre Manoel , N¬∫ 149',
  'jp.melcore@hotmail.com',
  '11984263033',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RAZ LOCACOES E SERVICOS LTDA',
  'RAZ LOCACOES E SERVICOS LTDA',
  '29.205.442/0001-56',
  'A definir',
  'eduardo@razservice.com',
  '31994000066',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BICALHO LOCADORA DE MOTOS LTDA',
  'BICALHO LOCADORA DE MOTOS LTDA',
  '57.828.761/0001-53',
  'A definir',
  'victorvasdb@gmail.com',
  '3192183611',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ALISSON RUAS LOCA√á√ïES LTDA',
  'ALISSON RUAS LOCA√á√ïES LTDA',
  '58.874.483/0001-33',
  'A definir',
  'alissonruas@yahoo.com.br',
  '34988938679',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MEGA LOCA√á√ïES',
  'MEGA LOCA√á√ïES',
  '55.944.390/0001-40',
  'A definir',
  'megalocacoesdemotos@gmail.com',
  '11958489680',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'KYKLOS LOCACAO DE VEICULOS LTDA',
  'KYKLOS LOCACAO DE VEICULOS LTDA',
  '62.757.010/0001-23',
  'MANAUS, AM. Bairro SANTA ETELVINA, rua CAREACU, N¬∫ 1069',
  'kyklosrental@gmail.com',
  '11996275339',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Manaus'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCACOES DINIZ LTDA',
  'LOCACOES DINIZ LTDA',
  '56.283.036/0001-84',
  'S√ÉO PAULO, SP. Bairro Lim√£o, rua Av. Prof. Celestino Bourroul, N¬∫ 581',
  'cdrafael3@hotmail.com',
  '19984020007',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FL LOCACOES LTDA',
  'FL LOCACOES LTDA',
  '62.569.392/0001-61',
  'FLORIAN√ìPOLIS, SC. Bairro COLONINHA, rua RUA WALDEMAR OURIQUES, N¬∫ 549',
  'josefelipeantonio@hotmail.com',
  '16981531725',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PRR LOCACAO DE VEICULOS LTDA',
  'PRR LOCACAO DE VEICULOS LTDA',
  '63.021.184/0001-96',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AV MIGUEL SUTIL, N¬∫ 11990',
  'pedrorechee@gmail.com',
  '98984326100',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FERNANDA ZAICOVSKI DE CARVALHO (BELO HORIZONTE - MG)',
  'FERNANDA ZAICOVSKI DE CARVALHO (BELO HORIZONTE - MG)',
  '52.013.038/0001-00',
  'BELO HORIZONTE , MG. Bairro Floresta , rua Rua Marechal Deodoro , N¬∫ 293',
  'fezaicovski+52013038@yahoo.com.br',
  '51996834557',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Belo Horizonte'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CBENI LOCADORA LTDA',
  'CBENI LOCADORA LTDA',
  '62.948.996/0001-19',
  'A definir',
  'cbenilocadora@gmail.com',
  '21997971918',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'L S RODRIGUE LOCACOES LTDA',
  'L S RODRIGUE LOCACOES LTDA',
  '61.949.357/0001-05',
  'FLORIAN√ìPOLIS, SC. Bairro CAPOEIRAS, rua RUA WALDEMAR OURIQUES K49501, N¬∫ 549',
  'rhcaldosecia@gmail.com',
  '27999890441',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BLISS OTG LOCADORA DE VEICULOS LTDA',
  'BLISS OTG LOCADORA DE VEICULOS LTDA',
  '58.873.838/0001-70',
  'A definir',
  'danielmartins_28@hotmail.com',
  '31984498807',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ASF LOCACOES LTDA',
  'ASF LOCACOES LTDA',
  '60.909.378/0001-34',
  'SALVADOR, BA. Bairro CAMINHO DAS ARVORES, rua AV TANCREDO NEVES, N¬∫ 1189',
  'grupoasf.alugueis@gmail.com',
  '48991031323',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LINCE LOCADORA LTDA',
  'LINCE LOCADORA LTDA',
  '61.157.588/0001-86',
  'JO√ÉO PESSOA, PB. Bairro ESTADOS, rua AV PRESIDENTE EPIT√ÅCIO PESSOA, N¬∫ 1251',
  'liga.locar@gmail.com',
  '61999142668',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA NORD LTDA',
  'LOCAGORA NORD LTDA',
  '62.589.920/0001-44',
  'Bairro BRO JARDIM AMERICA, rua AVENIDA T9, N¬∫ 186',
  'locagoranord@gmail.com',
  '3197585584',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BG SOLUTIONS LTDA',
  'BG SOLUTIONS LTDA',
  '60.588.884/0001-79',
  'JO√ÉO PESSOA, PB. Bairro ESTADOS, rua AVENIDA PRESIDENTE EPIT√ÅCIO PESSOA, N¬∫ 1251',
  'guimaraesgustavo@uol.com.br',
  '6298121088',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FORTE MOTOS LTDA',
  'FORTE MOTOS LTDA',
  '63.059.676/0001-70',
  'A definir',
  '11986279933',
  '22477113836',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LIT SERVICOS LTDA',
  'LIT SERVICOS LTDA',
  '60.940.578/0001-50',
  'SALVADOR, BA. Bairro CAMINHO DAS ARVORES, rua AV TANCREDO NEVES, N¬∫ 001189',
  'barretolitservicos@gmail.com',
  '7199913356',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTO BELEM NORTE LTDA',
  'MOTO BELEM NORTE LTDA',
  '60.071.583/0001-73',
  'A definir',
  'lindobrito73@gmail.com',
  '91989185991',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DGT LOCACOES DE VEICULOS AUTOMOTOR LTDA',
  'DGT LOCACOES DE VEICULOS AUTOMOTOR LTDA',
  '60.073.734/0001-22',
  'CURITIBA, PR. Bairro COPACABANA, rua BARATA RIBEIRO, N¬∫ 236',
  'dgtlocacoes@gmail.com',
  '11995081260',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAMOTOS EXPRESS LTDA',
  'LOCAMOTOS EXPRESS LTDA',
  '58.241.414/0001-92',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua R BARATA RIBEIRO, N¬∫ 236',
  'locamottos@hotmail.com',
  '16992379552',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'R D LOCADORA DE VEICULOS LTDA',
  'R D LOCADORA DE VEICULOS LTDA',
  '58.024.312/0001-15',
  'SALVADOR, BA. Bairro boca do rio, rua AV MESTRE MANOEL, N¬∫ N¬∫ 149',
  'diogenes.tcouto@gmail.com',
  '11999257595',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JF ALUGUEL DE MOTO SAO PAULO LTDA',
  'JF ALUGUEL DE MOTO SAO PAULO LTDA',
  '56.982.269/0001-75',
  'A definir',
  'jorgefernando07@gmail.com',
  '11986094391',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCA LEV MOTOCICLETAS LTDA',
  'LOCA LEV MOTOCICLETAS LTDA',
  '57.772.686/0001-56',
  'A definir',
  'localevimotos@gmail.com',
  '15981223300',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VIANA LOCACOES DE CELULARES LTDA',
  'VIANA LOCACOES DE CELULARES LTDA',
  '60.446.748/0001-44',
  'A definir',
  'vianalocacoescelmoto@hotmail.com',
  '65999814242',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MY LOCA√á√ïES',
  'MY LOCA√á√ïES',
  '56.135.782/0001-20',
  'A definir',
  'locagorayg@gmail.com',
  '98988240119',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master São Luís do Maranhão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTO MASTER LOCA√á√ÉO, SEGUROS E SERVI√áOS LTDA',
  'MOTO MASTER LOCA√á√ÉO, SEGUROS E SERVI√áOS LTDA',
  '54.328.467/0001-94',
  'A definir',
  'marcio.lagares@hotmail.com',
  '31991045008',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VENTURA ELOCACAO E COMERCIO DE MOTOS LTDA',
  'VENTURA ELOCACAO E COMERCIO DE MOTOS LTDA',
  '61.091.738/0001-04',
  'A definir',
  '11987666240',
  '14220183850',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTA LOCA√á√ïES',
  'MOTA LOCA√á√ïES',
  '57.035.790/0001-68',
  'A definir',
  'motalocacoesautomotivas@gmail.com',
  '11960648882',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TARGET MOTOS LTDA',
  'TARGET MOTOS LTDA',
  '61.691.547/0001-75',
  'BRAGAN√áA PAULISTA, SP. Bairro CENTRO, rua AVENIDA ANTONIO PIRES PIMENTEL, N¬∫ 865',
  'Motos@targetconsulting-br.com',
  '12997757755',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA RECIFE LTDA',
  'LOCAGORA RECIFE LTDA',
  '58.905.239/0001-90',
  'A definir',
  'dyogonunes54@gmail.com',
  '87999172300',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'YAMASHITA LOCACAO DE MOTOS LTDA',
  'YAMASHITA LOCACAO DE MOTOS LTDA',
  '61.733.191/0001-95',
  'A definir',
  'mauricioyamashita@gmail.com',
  '19997389599',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LM ALUGUEL DE MOTOS LTDA - RJ',
  'LM ALUGUEL DE MOTOS LTDA - RJ',
  '56.263.317/0001-75',
  'R. Barata Ribeiro, 236 - Copacabana',
  'lmalugueldemotos@gmail.com',
  '21993381707',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTO AIRES LTDA',
  'MOTO AIRES LTDA',
  '59.903.557/0001-85',
  'A definir',
  'motoaires2@gmail.com',
  '84999990021',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EVERGREEN MOBILIDADE URBANA',
  'EVERGREEN MOBILIDADE URBANA',
  '55.388.867/0001-58',
  'A definir',
  'geraldobarroso@gmail.com',
  '31997409515',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GARRA LOCACOES DE AUTOS LTDA',
  'GARRA LOCACOES DE AUTOS LTDA',
  '61.317.124/0001-90',
  'PORTO ALEGRE, RS. Bairro SAO GERALDO, rua AV PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'prespezim@gmail.com',
  '21999664823',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'NATMOTOS LOCACOES LTDA',
  'NATMOTOS LOCACOES LTDA',
  '59.479.746/0001-72',
  'A definir',
  'odilio.xavier@hotmail.com',
  '84988666601',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MAERS SERVICOS ADMINISTRATIVOS LTDA',
  'MAERS SERVICOS ADMINISTRATIVOS LTDA',
  '11.323.582/0002-44',
  'A definir',
  'maersconsult@gmail.com',
  '19971210303',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DL LOCA√áOES - TESTE',
  'DL LOCA√áOES - TESTE',
  '46.642.275/0001-20',
  'A definir',
  'treinamentolocagora@gmail.com',
  '31971989502',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VERONA LOCACAO DE VEICULOS LTDA',
  'VERONA LOCACAO DE VEICULOS LTDA',
  '59.821.232/0001-53',
  'A definir',
  'comercial@sulamericanapecas.com.br',
  '11945317703',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CD MOTOS RENTAL LTDA - SALVADOR',
  'CD MOTOS RENTAL LTDA - SALVADOR',
  '59.935.384/0001-87',
  'SALVADOR, BA. Bairro BOCA RIO, rua MESTRE MANOEL, N¬∫ 149',
  'classea.francisco@gmail.com',
  '71996687234',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTO ON LOCADORA DE VEICULOS LTDA',
  'MOTO ON LOCADORA DE VEICULOS LTDA',
  '62.569.211/0001-05',
  'A definir',
  'taylorfrauzino.vet@gmail.com',
  '6493053939',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TRS SOLUCOES EM MOBILIDADE SUL LTDA',
  'TRS SOLUCOES EM MOBILIDADE SUL LTDA',
  '61.908.289/0001-36',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua ANNE FRANK, N¬∫ 3687',
  'trsautomotiva@gmail.com',
  '11971376666',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MR ALUGUEL DE VEICULOS LTDA',
  'MR ALUGUEL DE VEICULOS LTDA',
  '61.863.260/0001-85',
  'SALVADOR, BA. Bairro Boca do Rio, rua Avenida Mestre Manoel, N¬∫ 149',
  'marcio.romer@gmail.com',
  '71981637302',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Feira de Santana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RPJG LOCACOES LTDA',
  'RPJG LOCACOES LTDA',
  '63.595.829/0001-02',
  'A definir',
  '82993088661',
  '2242727800',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ORIGINAL MOVE LTDA',
  'ORIGINAL MOVE LTDA',
  '60.150.154/0001-91',
  'A definir',
  'paulo.ortega@originalads.com.br',
  '11993050613',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VC LOCADORA',
  'VC LOCADORA',
  '55.420.752/0001-01',
  'A definir',
  'paulo_jcastro@hotmail.com',
  '11981938597',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCABH ALUGUEL DE MOTOS LTDA',
  'LOCABH ALUGUEL DE MOTOS LTDA',
  '59.029.831/0001-39',
  'A definir',
  'locabhmoto@gmail.com',
  '31985131863',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TURBO LOC LTDA',
  'TURBO LOC LTDA',
  '57.820.434/0001-55',
  'A definir',
  'turbolocmotos@gmail.com',
  '31984990234',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'S√£o Francisco Moto Loca√ß√£o Ltda',
  'S√£o Francisco Moto Loca√ß√£o Ltda',
  '59.456.290/0001-25',
  'SOROCABA, SP. Bairro Jardim Faculdade, rua Antonio de Andrade, N¬∫ 276',
  'saofranciscomtl@gmail.com',
  '11991676969',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Sorocaba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAMOTOS LTDA',
  'LOCAMOTOS LTDA',
  '60.819.466/0001-45',
  'A definir',
  'renatoos1@gmail.com',
  '31999670391',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCADORA ATUAL LTDA',
  'LOCADORA ATUAL LTDA',
  '58.802.021/0001-00',
  'A definir',
  'locadoraatuall@gmail.com',
  '95991747993',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EXCELENTE LOCACOES LTDA - COPACABANA',
  'EXCELENTE LOCACOES LTDA - COPACABANA',
  '57.454.186/0001-76',
  'A definir',
  'excelente.locacoes@hotmail.com',
  '19971520808',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MG SOUZA AUTOS LTDA',
  'MG SOUZA AUTOS LTDA',
  '62.544.461/0001-82',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua RUA ANNE FRANK, N¬∫ 3687',
  'marceloloccuritiba@gmail.com',
  '73981787303',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCA MAIS LTDA',
  'LOCA MAIS LTDA',
  '57.138.081/0001-08',
  'A definir',
  'locamaisbox60@gmail.com',
  '11999908085',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SENFER LOCA√á√ÉO E COMERCIO DE PE√áAS LTDA',
  'SENFER LOCA√á√ÉO E COMERCIO DE PE√áAS LTDA',
  '58.476.644/0001-30',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua BARATA RIBEIRO, N¬∫ 236',
  'senferlocagora+58476644@gmail.com',
  '11972835589',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'G&G LOCA√á√ïES LTDA',
  'G&G LOCA√á√ïES LTDA',
  '58.756.851/0001-49',
  'A definir',
  'sampaioluz.lucas@gmail.com',
  '82991090153',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SETTA LOCADORA LTDA',
  'SETTA LOCADORA LTDA',
  '56.169.072/0001-11',
  'A definir',
  'renata@rbscomercio.com.br',
  '11981426027',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AISMOTO LOCACAO DE VEICULOS LTDA',
  'AISMOTO LOCACAO DE VEICULOS LTDA',
  '60.961.920/0001-06',
  'A definir',
  'marceloaismoto@yahoo.com.br',
  '19991977096',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AL ABREU & LOBO LTDA',
  'AL ABREU & LOBO LTDA',
  '61.337.741/0001-57',
  'A definir',
  '82996246739',
  '7519795462',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AUDAX8 LTDA - Rodrigo In√°cio da Silva - SEDE SP',
  'AUDAX8 LTDA - Rodrigo In√°cio da Silva - SEDE SP',
  '57.027.036/0001-86',
  'A definir',
  'audax8@hotmail.com',
  '62995482963',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LIVRE. COM COMPRA VENDA E LOCACAO O DE VEICULOS E MOTOCICLETAS NOVOS E USADOS',
  'LIVRE. COM COMPRA VENDA E LOCACAO O DE VEICULOS E MOTOCICLETAS NOVOS E USADOS',
  '54.143.272/0001-70',
  'S√ÉO PAULO, SP. Bairro Lim√£o, rua Av. Prof. Celestino Bourroul, N¬∫ 581',
  'gledsonrota1@gmail.com',
  '16981051444',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FERNANDA DE SOUZA PASSOS BATISTA (BELO HORIZONTE - MG)',
  'FERNANDA DE SOUZA PASSOS BATISTA (BELO HORIZONTE - MG)',
  '52.248.735/0001-32',
  'BELO HORIZONTE, MG. Bairro Floresta , rua Rua Marechal Deodoro, N¬∫ 293',
  'mariobatista4+52248735@gmail.com',
  '61992583525',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floresta'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AMERICA MOTOS',
  'AMERICA MOTOS',
  '61.441.132/0001-43',
  'A definir',
  'americamotos25@gmail.com',
  '62981175184',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTO MANIA LTDA',
  'MOTO MANIA LTDA',
  '62.135.722/0001-00',
  'FLORIAN√ìPOLIS, SC. Bairro COLONINHA, rua RUA WALDEMAR OURIQUES, N¬∫ 549',
  'daniel.bertolletti@gmail.com',
  '11956106080',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VL LOCADORA DE VEICULOS LTDA',
  'VL LOCADORA DE VEICULOS LTDA',
  '58.195.022/0001-34',
  'R. Barata Ribeiro, 236 - Copacabana',
  'plandados@plandados.com',
  '3185069425',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CAPANEMA MOTORS E LOCACAO LTDA',
  'CAPANEMA MOTORS E LOCACAO LTDA',
  '57.526.013/0001-16',
  'A definir',
  'andrecapanema@hotmail.com',
  '31991659515',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RODRIGO DANTAS DO NASCIMENTO - S√ÉO PAULO - SP (SEDE)',
  'RODRIGO DANTAS DO NASCIMENTO - S√ÉO PAULO - SP (SEDE)',
  '55.007.069/0001-39',
  'A definir',
  'splocagora@gmail.com',
  '84988003321',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CRTHEODORO CONSULTORIA E COMERCIO LTDA',
  'CRTHEODORO CONSULTORIA E COMERCIO LTDA',
  '50.649.234/0001-32',
  'A definir',
  'carlostheodoro1@gmail.com',
  '1199631317',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AG8 ASSESSORIA E GERENCIAMENTO DESPORTIVO LTDA',
  'AG8 ASSESSORIA E GERENCIAMENTO DESPORTIVO LTDA',
  '48.831.825/0001-84',
  'S√ÉO PAULO, SP. Bairro Tatuap√©, rua Nova Jerusal√©m, N¬∫ 807',
  'felipebuagallo@hotmail.com',
  '16996272161',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SANALE LOCACOES DE VEICULOS LTDA.',
  'SANALE LOCACOES DE VEICULOS LTDA.',
  '55.681.281/0001-87',
  'RIO DE JANEIRO, RJ. Bairro BARRA DA TIJUCA, rua AVENIDA OLEG√ÅRIO MACIEL, N¬∫ 00',
  'sannyofar@hotmail.com',
  '21988965786',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCFLORIPA EXPEDICOES LTDA',
  'LOCFLORIPA EXPEDICOES LTDA',
  '62.080.928/0001-80',
  'FLORIAN√ìPOLIS, SC. Bairro CAPOEIRAS, rua RUA WALDEMAR OURIQUES K49501, N¬∫ 549',
  'gcvillaverdeb@gmail.com',
  '11999752366',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CTX LOCACAO  LTDA',
  'CTX LOCACAO  LTDA',
  '61.359.325/0001-50',
  'PORTO ALEGRE, RS. Bairro S√ÉO GERALDO, rua AV PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'carlos-toni@uol.com.br',
  '11976148165',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GM',
  'GM',
  '62.918.661/0001-58',
  'BRAGAN√áA PAULISTA, SP. Bairro CENTRO, rua AVENIDA ANTONIO PIRES PIMENTEL, N¬∫ 865',
  'guirbm@gmail.com',
  '11975351899',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GUMIERI COMPANY LTDA',
  'GUMIERI COMPANY LTDA',
  '55.083.544/0001-56',
  'A definir',
  'gumiericompany@gmail.com',
  '11997509604',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'E. CORREA LOCADORA LTDA',
  'E. CORREA LOCADORA LTDA',
  '57.932.500/0001-89',
  'A definir',
  'ermescorrea@hotmail.com',
  '44988252127',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PREMIUM LOCACOES LTDA',
  'PREMIUM LOCACOES LTDA',
  '60.442.328/0001-90',
  'A definir',
  'ana.castro@jrferragens.com',
  '37998054254',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MAK MOTOS LTDA',
  'MAK MOTOS LTDA',
  '61.752.610/0001-36',
  'PORTO ALEGRE, RS. Bairro SAO GERALDO, rua AVENIDA PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'fereduju@hotmail.com',
  '41999769212',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'L. G. DE G. AARDOOM LTDA',
  'L. G. DE G. AARDOOM LTDA',
  '62.835.348/0001-56',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AVENIDA MIGUEL SUTIL, N¬∫ 11990',
  'luize.degeus@icloud.com',
  '42999857900',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DELMAZO & SCUCATO LOCACOES VENDAS E COMERCIO LTDA',
  'DELMAZO & SCUCATO LOCACOES VENDAS E COMERCIO LTDA',
  '57.127.928/0001-59',
  'A definir',
  'fioredelmazo@gmail.com',
  '31999748604',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DRA MOTOS LTDA',
  'DRA MOTOS LTDA',
  '61.921.363/0001-54',
  'BRAGAN√áA PAULISTA, SP. Bairro CENTRO, rua AVENIDA ANTONIO PIRES PIMENTEL, N¬∫ 865',
  'alex@drasolucoes.com',
  '11980161161',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JACAM RENT LTDA',
  'JACAM RENT LTDA',
  '60.725.883/0001-29',
  'A definir',
  'jonatanrenier@gmail.com',
  '11999674785',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PBS DINIS SERVICOS LTDA',
  'PBS DINIS SERVICOS LTDA',
  '61.814.889/0001-35',
  'FLORIAN√ìPOLIS, SC. Bairro CAPOEIRAS, rua RUA WALDEMAR OURIQUES K49501, N¬∫ 549',
  'pbs_dinis@outlook.com',
  '1299122105',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MEDTECH MIGRATION LTDA',
  'MEDTECH MIGRATION LTDA',
  '57.717.675/0001-73',
  'A definir',
  'rodolfoladislau@yahoo.com',
  '12992006788',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CM LOCACAO DE VEICULOS E EQUIPAMENTOS LTDA',
  'CM LOCACAO DE VEICULOS E EQUIPAMENTOS LTDA',
  '58.211.310/0001-35',
  'A definir',
  'carlosmc.ormeno@gmail.com',
  '48988088950',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JUNG LOCACOES LTDA',
  'JUNG LOCACOES LTDA',
  '62.648.005/0001-82',
  'A definir',
  'locagorajung@gmail.com',
  '42999752375',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Perci',
  'Perci',
  '56.091.882/0001-00',
  'A definir',
  'leccosouza227@gmail.com',
  '13991505313',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Rota 66 Locacao de Motos Ltda - SEDE SP',
  'Rota 66 Locacao de Motos Ltda - SEDE SP',
  '56.319.498/0001-04',
  'A definir',
  'rota66locmotos@gmail.com',
  '11976749192',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BOSU LOCACOES E COMERCIAL LTDA',
  'BOSU LOCACOES E COMERCIAL LTDA',
  '56.797.496/0001-20',
  'A definir',
  'bosucomercial@gmail.com',
  '11986318866',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CUSTODIO NETTO LOCACOES LTDA',
  'CUSTODIO NETTO LOCACOES LTDA',
  '63.104.510/0001-29',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AVENIDA MIGUEL SUTIL, N¬∫ 11990',
  'locagora.cuiaba@gmail.com',
  '21967517600',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VRUMM LOCADORA DE MOTOS LTDA',
  'VRUMM LOCADORA DE MOTOS LTDA',
  '62.167.979/0001-44',
  'A definir',
  'locadoravrumm@gmail.com',
  '48999677685',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VICA LOCACOES DE MOTOS LTDA',
  'VICA LOCACOES DE MOTOS LTDA',
  '63.229.045/0001-52',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AV MIGUEL SUTIL, N¬∫ 11990',
  'luigicprodrigues@gmail.com',
  '31996620444',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Abreu & Freitas Loca√ß√£o Ltda',
  'Abreu & Freitas Loca√ß√£o Ltda',
  '57.336.132/0001-06',
  'A definir',
  'guilhermeheliabreu@gmail.com',
  '31998117690',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'YBYRA LOCADORA LTDA - SEDE LUZ',
  'YBYRA LOCADORA LTDA - SEDE LUZ',
  '56.135.342/0001-73',
  'A definir',
  'ybyralocadoranatal@gmail.com',
  '84994230695',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'URUTAU LOCA√á√ÉO E COM√âRCIO DE VE√çCULOS LTDA',
  'URUTAU LOCA√á√ÉO E COM√âRCIO DE VE√çCULOS LTDA',
  '58.404.048/0001-45',
  'A definir',
  'fvcdemarco@gmail.com',
  '12997341508',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DFP21 LOCACOES LTDA',
  'DFP21 LOCACOES LTDA',
  '59.472.536/0001-52',
  'A definir',
  'diegoproenca@gmail.com',
  '48991010021',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAFACIL MOTOS LTDA',
  'LOCAFACIL MOTOS LTDA',
  '62.871.550/0001-33',
  'CAMPINAS, SP. Bairro JARDIM BRASIL, rua AV BRASIL , N¬∫ 807',
  'agezandrd@gmail.com',
  '1299630252',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ALG LOCADORA DIVERSAS LTDA',
  'ALG LOCADORA DIVERSAS LTDA',
  '48.019.890/0001-00',
  'JO√ÉO PESSOA, PB. Bairro AEROCLUBE, rua RUA PASTOR JOSEBIAS FIALHO MARINHO, N¬∫ 40',
  'gestaoadmloc@gmail.com',
  '61981724360',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JT LOCADORA LTDA',
  'JT LOCADORA LTDA',
  '58.404.523/0001-83',
  'A definir',
  'leonardo+58404523@quattuoreng.com',
  '21983046981',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'HM LOCADORA DE MOTOS LTDA',
  'HM LOCADORA DE MOTOS LTDA',
  '59.876.350/0001-69',
  'A definir',
  'hmlocmotos@bol.com.br',
  '8396546208',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOCITY LOCADORA DE VEICULOS LTDA',
  'MOTOCITY LOCADORA DE VEICULOS LTDA',
  '62.869.286/0001-01',
  'CAMPINAS, SP. Bairro JARDIM BRASIL, rua AVENIDA BRASIL, N¬∫ 807',
  'claudiomarcelino2009@yahoo.com.br',
  '31988411206',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LIVRE LOCADORA E SERVI√áOS',
  'LIVRE LOCADORA E SERVI√áOS',
  '59.413.194/0001-08',
  'A definir',
  'livre.locagora@gmail.com',
  '11985619324',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LB SERVICOS LTDA',
  'LB SERVICOS LTDA',
  '61.331.883/0001-07',
  'A definir',
  'bia_guireli@hotmail.com',
  '11996000909',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GERA LOCACOES E SERVICOS LTDA',
  'GERA LOCACOES E SERVICOS LTDA',
  '61.178.089/0001-75',
  'A definir',
  'ivonysouza29@gmail.com',
  '79996637503',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GG LOCADORA DE MOTOS LTDA',
  'GG LOCADORA DE MOTOS LTDA',
  '48.545.077/0001-73',
  'RIO DE JANEIRO, RJ. Bairro Barra da Tijuca, rua Rua Sergio Person, N¬∫ 127',
  'ggmotoslocagora@gmail.com',
  '19992069601',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RUBENS ALVES EMPREENDIMENTOS E CONSULTORIA LTDA',
  'RUBENS ALVES EMPREENDIMENTOS E CONSULTORIA LTDA',
  '42.763.030/0001-08',
  'A definir',
  'rubens.alves.rts@gmail.com',
  '31996190483',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PINTO MOBILIDADE E REPRESENTACOES LTDA',
  'PINTO MOBILIDADE E REPRESENTACOES LTDA',
  '19.304.262/0001-78',
  'Rua Luis Sergio Person 127',
  'marcioantoniosilvapinto@gmail.com',
  '21926200224',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FREITAS LOCACAO DE VEICULOS LTDA',
  'FREITAS LOCACAO DE VEICULOS LTDA',
  '62.699.180/0001-07',
  'A definir',
  'walney.garcia71@gmail.com',
  '19992219895',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'WF TRANSPORTES',
  'WF TRANSPORTES',
  '62.299.499/0001-37',
  'A definir',
  'wflocagora@gmail.com',
  '11997161313',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CHLOCAGORA LTDA',
  'CHLOCAGORA LTDA',
  '57.173.687/0001-84',
  'A definir',
  'chlocagora@gmail.com',
  '35999195564',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RGS VIP LOCACOES AUTOMOTIVAS LTDA',
  'RGS VIP LOCACOES AUTOMOTIVAS LTDA',
  '61.156.672/0001-85',
  'PORTO ALEGRE, RS. Bairro SAO GERALDO, rua AV PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'raphael-00@hotmail.com',
  '61992978086',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ALPHATRILHATRIPS MOTO TOURS',
  'ALPHATRILHATRIPS MOTO TOURS',
  '10.492.848/0001-39',
  'A definir',
  'locavip2024@gmail.com',
  '11917640218',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ANEAS LOCACAO LTDA',
  'ANEAS LOCACAO LTDA',
  '61.844.456/0001-22',
  'BRAGAN√áA PAULISTA, SP. Bairro CENTRO, rua AV ANTONIO PIRES PIMENTEL, N¬∫ 865',
  'jfaneas@gmail.com',
  '1698801445',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CAMPINAS ALUGUEL DE MOTOS LTDA',
  'CAMPINAS ALUGUEL DE MOTOS LTDA',
  '62.881.025/0001-07',
  'CAMPINAS, SP. Bairro JARDIM BRASIL, rua AVENIDA BRASIL, N¬∫ 807',
  'caiolsantos@hotmail.com',
  '12997732502',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'F. P. TEODORO LTDA',
  'F. P. TEODORO LTDA',
  '57.332.130/0001-49',
  'A definir',
  'fernanda_pusebon@hotmail.com',
  '67998125605',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SM LOCACAO DE MOTOS LTDA',
  'SM LOCACAO DE MOTOS LTDA',
  '62.521.699/0001-92',
  'PORTO ALEGRE, RS. Bairro SAO GERALDO, rua AVENIDA PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'salvio.bel@terra.com.br',
  '91983447494',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'REFONT''S LOCACAO DE VEICULOS, MAQUINAS E EQUIPAMENTOS ELETRONICOS LTDA',
  'REFONT''S LOCACAO DE VEICULOS, MAQUINAS E EQUIPAMENTOS ELETRONICOS LTDA',
  '59.469.229/0001-12',
  'A definir',
  'efontanaps3@gmail.com',
  '1198215275',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MELVI LOCACOES LTDA',
  'MELVI LOCACOES LTDA',
  '61.645.005/0001-66',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua R BARATA RIBEIRO, N¬∫ 00236',
  'adrianamangilibarbara@gmail.com',
  '11991606886',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FURTADO FERNANDES EMPREENDIMENTOS LTDA',
  'FURTADO FERNANDES EMPREENDIMENTOS LTDA',
  '61.527.786/0001-94',
  'A definir',
  '22998089151',
  '2483757766',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AGILIS LOCADORA LTDA',
  'AGILIS LOCADORA LTDA',
  '60.594.069/0001-12',
  'CURITIBA, PR. Bairro HAUER, rua ANNE FRANK, N¬∫ 3687',
  'flavio.pelizari@reach.com.br',
  '11991728542',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EXCLUIR franquia',
  'EXCLUIR franquia',
  '61.458.655/0001-00',
  'R. Barata Ribeiro, 236 - Copacabana',
  'elaisa@grupomol.com.br',
  '3399989887',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ANDERMOTOS LOCADORA LTDA',
  'ANDERMOTOS LOCADORA LTDA',
  '57.225.040/0001-59',
  'Carapicu√≠ba, SP. Bairro Vila Silvi√¢nia, rua Rua Padre Em√≠lio, N¬∫ 11',
  'andersongeordani@hotmail.com',
  '11911842925',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BRENN MOTORS LTDA',
  'BRENN MOTORS LTDA',
  '58.684.850/0001-36',
  'A definir',
  'brenn.motors@gmail.com',
  '11933470088',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CG Motos Ltda',
  'CG Motos Ltda',
  '59.621.282/0001-97',
  'SALVADOR, BA. Bairro EDIFICIO, rua AV. TANCREDO NEVES, N¬∫ 1189',
  'fernandomaiarezende@hotmail.com',
  '2199658575',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TBD LOCADORA E COMERCIO LTDA',
  'TBD LOCADORA E COMERCIO LTDA',
  '61.442.754/0001-96',
  'A definir',
  'dornetiago@hotmail.com',
  '44998088021',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EMPREENDIMENTOS LTDA',
  'EMPREENDIMENTOS LTDA',
  '55.467.106/0001-91',
  'A definir',
  'cristiancesar80@hotmail.com',
  '1954213435',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RFF DIAMOND LTDA',
  'RFF DIAMOND LTDA',
  '62.029.372/0001-06',
  'FLORIAN√ìPOLIS, SC. Bairro COLONINHA, rua RUA WALDEMAR OURIQUES, N¬∫ 549',
  'fuhrmanfelipe@gmail.com',
  '1198265886',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MG RENTAL MOTOS - Salvador',
  'MG RENTAL MOTOS - Salvador',
  '56.993.324/0001-22',
  'SALVADOR, BA. Bairro Boca do Rio Salvador , rua Mestre Manuel, N¬∫ 149',
  'felipe.correia@locagoraba.com.br',
  '31999490110',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LIBBERTHA RODAS',
  'LIBBERTHA RODAS',
  '60.821.795/0001-20',
  'TERESINA, PI. Bairro Tabuleta, rua Avenida Miguel Rosa, N¬∫ 7500',
  'libbertharodas@gmail.com',
  '11971481873',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Teresina'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MARCO T√öLIO SILVA ALVES (BELO HORIZONTE - MG)',
  'MARCO T√öLIO SILVA ALVES (BELO HORIZONTE - MG)',
  '32.244.792/0001-36',
  'BELO HORIZONTE , MG. Bairro Floresta , rua Rua Marechal Deodoro , N¬∫ 293',
  'tulio_silva_alves+32244792@hotmail.com',
  '37999519218',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floresta'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'WCGI LOCACOES LTDA',
  'WCGI LOCACOES LTDA',
  '61.443.764/0001-46',
  'A definir',
  'hayamaesilva@gmail.com',
  '11964163112',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SARO MOTOS',
  'SARO MOTOS',
  '62.671.687/0001-44',
  'FLORIAN√ìPOLIS, SC. Bairro CAPOEIRA, rua RUA WALDEMAR OURIQUES, N¬∫ 549',
  'nicacio.fernanda@hotmail.com',
  '11958060801',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAFACIL LOCACAO E COMERCIO LTDA',
  'LOCAFACIL LOCACAO E COMERCIO LTDA',
  '55.312.357/0001-05',
  'S√ÉO LU√çS, MA. Bairro Vinhais, rua Av. Jer√¥nimo de Albuquerque, N¬∫ 11',
  'locafacilslz@gmail.com',
  '9898181647',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master São Luís do Maranhão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MN RENT A BIKE LTDA',
  'MN RENT A BIKE LTDA',
  '56.120.962/0001-39',
  'A definir',
  'locagorabsb+56120962@gmail.com',
  '6199421994',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MS loca√ß√£o de motos',
  'MS loca√ß√£o de motos',
  '55.962.007/0001-86',
  'A definir',
  'biagio.maggio@terra.com.br',
  '12996691200',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Motocell Locadora de Veiculos e Equipamentos Tecnologicos LTDA',
  'Motocell Locadora de Veiculos e Equipamentos Tecnologicos LTDA',
  '57.623.783/0001-87',
  'PAULO DE FARIA, SP. Bairro Freguesia do √ì, rua Rua Ribeiro de Morais, N¬∫  211',
  'maitec@hotmail.com',
  '11991976709',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MVS LOCACAO DE VEICULOS LTDA',
  'MVS LOCACAO DE VEICULOS LTDA',
  '62.521.899/0001-45',
  'A definir',
  'mvs.locacao.moto@gmail.com',
  '43984331547',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SHELBY LOCADORA DE MOTOS LTDA',
  'SHELBY LOCADORA DE MOTOS LTDA',
  '61.621.391/0001-56',
  'A definir',
  'shelbylocamotos@gmail.com',
  '94992648562',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BENJAMIN MOTORAMA LTDA',
  'BENJAMIN MOTORAMA LTDA',
  '5808770000014',
  'A definir',
  'benjamin.motorama@gmail.com',
  '11983549692',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Auto Vrum LTDA',
  'Auto Vrum LTDA',
  '70.172.695/0001-74',
  'Armindo Guilherme Dammer',
  'gilliarddamaceno@gmail.com',
  '49999227272',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Curitiba - HR Motors Ltda',
  'Curitiba - HR Motors Ltda',
  '57.449.674/0001-95',
  'CURITIBA, PR. Bairro Boqueir√£o, rua Rua Anne Frank, N¬∫ 3687',
  'wladimir.e.h.r@gmail.com',
  '11997113959',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOLOC LOCADORA LTDA',
  'MOTOLOC LOCADORA LTDA',
  '57.929.239/0001-68',
  'A definir',
  'lucaugu@yahoo.com.br',
  '21982344285',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOBUSTOS LTDA',
  'MOTOBUSTOS LTDA',
  '62.144.557/0001-53',
  'A definir',
  'motobustos0@gmail.com',
  '11988387362',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOBU BRASIL LOCADORA DE VEICULOS LTDA',
  'MOBU BRASIL LOCADORA DE VEICULOS LTDA',
  '56.386.003/0001-60',
  'A definir',
  'mobulocadora@gmail.com',
  '94998152200',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'INOVARE LOCACOES LTDA',
  'INOVARE LOCACOES LTDA',
  '62.740.854/0001-61',
  'EDIF GUIMARAES TRADE SALA 1603, CAMINHO DAS ARVORES. SALVADOR BA',
  'LAURALAVIGNE.TC@GMAIL.COM.BR',
  '7192251002',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOC CERTO FROTAS LTDA',
  'LOC CERTO FROTAS LTDA',
  '37.891.064/0001-30',
  'A definir',
  'loccertofrotas@gmail.com',
  '31982653127',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'L.M LOCACOES DE VEICULOS LTDA',
  'L.M LOCACOES DE VEICULOS LTDA',
  '57.734.379/0001-80',
  'A definir',
  'nicolebecattini@hotmail.com',
  '3197123498',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GESTER MOTOS LTDA',
  'GESTER MOTOS LTDA',
  '61.457.392/0001-07',
  'A definir',
  'mgtp07@proton.me',
  '11925963211',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ROMA MOTOS LTDA',
  'ROMA MOTOS LTDA',
  '62.474.573/0001-04',
  'A definir',
  'mairacamarinho@hotmail.com',
  '11947624206',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'NEVES SENEM LTDA',
  'NEVES SENEM LTDA',
  '56.366.328/0001-80',
  'Rua Barata Ribeiro, 236 - Copacabana',
  'f.neves@yahoo.com.br',
  '21967451143',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DW LOCADORA LTDA',
  'DW LOCADORA LTDA',
  '58.222.812/0001-61',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua BARATA RIBEIRO , N¬∫ 236',
  'dwlocadora+58222812@gmail.com',
  '41985017156',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VELOZ LTDA',
  'VELOZ LTDA',
  '62.778.475/0001-60',
  'FLORIAN√ìPOLIS, SC. Bairro COLONINHA, rua R WALDEMAR OURIQUES, N¬∫ 549',
  'ffc@futuranegocios.net.br',
  '49930181458',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Andrade & Damasceno Ltda',
  'Andrade & Damasceno Ltda',
  '57.456.716/0001-15',
  'A definir',
  'damasceno.lab@gmail.com',
  '11953001321',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PRG LOCADORA DE MOTOS LTDA',
  'PRG LOCADORA DE MOTOS LTDA',
  '36.910.615/0001-00',
  'BARUERI, SP. Bairro CHACARAS MARCO, rua RUA LAPA, N¬∫ 243',
  'prglocadoramotos@gmail.com',
  '31999555543',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Sorocaba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JN LOCA√á√ïES LTDA',
  'JN LOCA√á√ïES LTDA',
  '58.038.476/0001-00',
  'A definir',
  '47997439524',
  '2422817025',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CARLOS EDNEY BORGES SILVA LTDA',
  'CARLOS EDNEY BORGES SILVA LTDA',
  '61.789.369/0001-10',
  'A definir',
  'locmotos12@gmail.com',
  '3599172826',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DEUJOL EMPREENDIMENTOS LTDA',
  'DEUJOL EMPREENDIMENTOS LTDA',
  '61.994.359/0001-16',
  'FLORIAN√ìPOLIS, SC. Bairro CAPOEIRAS, rua RUA VALDEMAR OURIQUES, N¬∫ 549',
  'osvaldoleivas88@gmail.com',
  '11988145353',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FREITAS E QUEIROZ LOCACOES LTDA',
  'FREITAS E QUEIROZ LOCACOES LTDA',
  '62.809.849/0001-68',
  'MANAUS, AM. Bairro SAO FRANCISCO, rua R SOBRINHO MARANHAO, N¬∫ 310',
  'motoconnectmanaus@gmail.com',
  '62999096886',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Manaus'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BR MOTOS LTDA',
  'BR MOTOS LTDA',
  '62.550.094/0001-20',
  'A definir',
  'rodrigotaioba@gmail.com',
  '19998199067',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MGT LOCACAO LTDA',
  'MGT LOCACAO LTDA',
  '57.513.751/0001-29',
  'R. Barata Ribeiro, 236 - Copacabana',
  'alvescunhapqd@gmail.com',
  '6299891201',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ASNETO LTDA',
  'ASNETO LTDA',
  '61.077.559/0001-04',
  'A definir',
  'adelioneto@hotmail.com',
  '12997230047',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LM ALUGUEL DE MOTOS LTDA - RJ',
  'LM ALUGUEL DE MOTOS LTDA - RJ',
  '56.263.317/0001-75',
  'Rua DOMINGUES DE S√Å 384 ICARA√ç - NITER√ìI RJ',
  'lmalugueldemotos+56263317@gmail.com',
  '21993381707',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FLAMOTOR LOCADORA DE VEICULOS LTDA',
  'FLAMOTOR LOCADORA DE VEICULOS LTDA',
  '62.411.387/0001-26',
  'A definir',
  'domus_sp@terra.com.br',
  '11955644000',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SALVO CAMPOS DUMONT COM E LOCA√á√ÉO LTDA',
  'SALVO CAMPOS DUMONT COM E LOCA√á√ÉO LTDA',
  '59.686.264/0001-93',
  'A definir',
  'scdsalvo@gmail.com',
  '31985851011',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JC LOCA√á√ïES DE MOTOS LTDA',
  'JC LOCA√á√ïES DE MOTOS LTDA',
  '56.136.903/0001-59',
  'PAULO DE FARIA, SP. Bairro Canind√©, rua Avenida Cruzeiro do Sul, N¬∫ 130',
  'jairan_007@hotmail.com',
  '11969640505',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'INMOVE LOCADORA LTDA',
  'INMOVE LOCADORA LTDA',
  '62.737.032/0001-21',
  'JO√ÉO PESSOA, PB. Bairro JARDIM OCEANIA, rua R SEVERINO NICOLAU DE MELO, N¬∫ 420',
  'contato@inmovelocadora.com.br',
  '11982022096',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MLA LOCA VEICULOS LTDA',
  'MLA LOCA VEICULOS LTDA',
  '61.590.950/0001-08',
  'BRAGAN√áA PAULISTA, SP. Bairro CENTRO, rua AVENIDA ANTONIO PIRES PIMENTEL, N¬∫ 865',
  'mariobetijunior@gmail.com',
  '11981713355',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RIZO LOCACAO DE VEICULOS LTDA',
  'RIZO LOCACAO DE VEICULOS LTDA',
  '60.363.552/0001-96',
  'A definir',
  'torquatorizomatheus@gmail.com',
  '11968589797',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FBF LOCACOES E SERVICOS LTDA',
  'FBF LOCACOES E SERVICOS LTDA',
  '60.074.308/0001-03',
  'A definir',
  'fabiowo@me.com',
  '71997379191',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LACERDA E GALDINO LOCADORA DE VEICULOS LTDA',
  'LACERDA E GALDINO LOCADORA DE VEICULOS LTDA',
  '58.849.781/0001-73',
  'A definir',
  'lacerdaegaldino@gmail.com',
  '62984960206',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DUARTE DE ALMEIDA LOCACOES LTDA',
  'DUARTE DE ALMEIDA LOCACOES LTDA',
  '61.145.625/0001-36',
  'PORTO ALEGRE, RS. Bairro S√ÉO GERALDO, rua AV PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'dralessandroduarte@yahoo.com.br',
  '21973008411',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FONTES AGUIAR SOBRAL LOCACAO DE MOTOS LTDA - Sergio Luiz Rodrigues de Aguiar',
  'FONTES AGUIAR SOBRAL LOCACAO DE MOTOS LTDA - Sergio Luiz Rodrigues de Aguiar',
  '56.659.561/0001-51',
  'A definir',
  'faslocacaodemotos@gmail.com',
  '79988710917',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'M&M CORRADI LOCA√á√ÉO LTDA',
  'M&M CORRADI LOCA√á√ÉO LTDA',
  '62.863.148/0001-07',
  'A definir',
  'mm.corradi.locacao@gmail.com',
  '11972844145',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LIANNYS LOCADORA DE MOTO LTDA',
  'LIANNYS LOCADORA DE MOTO LTDA',
  '62.367.273/0001-26',
  'BRAGAN√áA PAULISTA, SP. Bairro CENTRO, rua AVENIDA ANTONIO PIRES PIMENTEL, N¬∫ 865',
  'liannyslocadora@gmail.com',
  '71997125599',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BICALHO LOCADORA DE MOTOS LTDA',
  'BICALHO LOCADORA DE MOTOS LTDA',
  '57.828.761/0001-53',
  'A definir',
  'bicalholocamotos@gmail.com',
  '31992183611',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SUNMOTOS RENTALS LOCACAO LTDA - ME',
  'SUNMOTOS RENTALS LOCACAO LTDA - ME',
  '57.969.340/0001-42',
  'A definir',
  'factum2022@gmail.com',
  '85986761122',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JC LC LOCACOES LTDA',
  'JC LC LOCACOES LTDA',
  '6280945200017',
  'CUIAB√Å, MT. Bairro Cidade alta, rua Av. Miguel Sutil, N¬∫ 11990',
  'jc.jpinvestimentos@gmail.com',
  '2199999195',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAFACIL LOCACOES LTDA',
  'LOCAFACIL LOCACOES LTDA',
  '60.852.139/0001-95',
  'TERESINA, PI. Bairro TABULETA, rua AVENIDA MIGUEL ROSA, N¬∫ 7500',
  'locafacil.locacoes@hotmail.com',
  '19971520808',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master São Luís do Maranhão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'UIRAPURU LOCACAO E COMERCIO DE VEICULOS LTDA',
  'UIRAPURU LOCACAO E COMERCIO DE VEICULOS LTDA',
  '58.322.532/0001-25',
  'A definir',
  'fvcdemarco@icloud.com',
  '12997341508',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LH RENTAL LTDA',
  'LH RENTAL LTDA',
  '62.897.562/0001-37',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AVENIDA MIGUEL SUTIL, N¬∫ 11990',
  'participacoes.lh@gmail.com',
  '27992282822',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TITO LOCACOES LTDA',
  'TITO LOCACOES LTDA',
  '62.515.795/0001-28',
  'A definir',
  'enildoancelmo@hotmail.com',
  '64999064012',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EXCLUIR franquia',
  'EXCLUIR franquia',
  '61.458.655/0001-00',
  'Rua Luis Sergio Person 127',
  'fabiomol+61458655@grupomol.com.br',
  '3399989887',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'A & S LOCACOES LTDA',
  'A & S LOCACOES LTDA',
  '60.527.760/0001-83',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua R BARATA RIBEIRO, N¬∫ 00236',
  'suzaraodonto@gmail.com',
  '21996843620',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'HTL MOTORS LTDA',
  'HTL MOTORS LTDA',
  '59.043.417/0001-84',
  'A definir',
  'htlmotors@gmail.com',
  '85996468088',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SAFE MOTOS COMERCIO E LOCACAO LTDA',
  'SAFE MOTOS COMERCIO E LOCACAO LTDA',
  '61.274.192/0001-19',
  'PORTO ALEGRE, RS. Bairro SAO GERALDO, rua AV PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'willervw@yahoo.com.br',
  '31984224321',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOJAABR',
  'LOJAABR',
  '35.067.521/0001-40',
  'A definir',
  'invictajm@gmail.com',
  '573009291',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SORRENTINO''S MOTOS LTDA.',
  'SORRENTINO''S MOTOS LTDA.',
  '62.388.159/0001-82',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua R ANNE FRANK, N¬∫ 3687',
  'vaniasorrentin2@gmail.com',
  '41996812131',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Dennis Kenji Miyamoto - Miyamoto Locadora Ltda - SEDE - SP',
  'Dennis Kenji Miyamoto - Miyamoto Locadora Ltda - SEDE - SP',
  '57.321.017/0001-68',
  'A definir',
  'miyamotolocadora@gmail.com',
  '11981861239',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LUSITANO TRANSPORTES LTDA',
  'LUSITANO TRANSPORTES LTDA',
  '48.464.214/0001-45',
  'A definir',
  'nathaliagracia1@gmail.com',
  '16988640004',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Moto Urbana Servicos de Locacao e Vendas LTDA',
  'Moto Urbana Servicos de Locacao e Vendas LTDA',
  '56.223.351/0001-16',
  'BELO HORIZONTE, MG. Bairro Floresta, rua Rua Marechal Deodoro, N¬∫ 293',
  'igor.coimbra@gmail.com',
  '24988186781',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floresta'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LUIZ CARLOS ARA√öJO DE OLIVEIRA (Marcio Antonio) - LUMA MOTORS - S√£o Paulo SEDE (SP)',
  'LUIZ CARLOS ARA√öJO DE OLIVEIRA (Marcio Antonio) - LUMA MOTORS - S√£o Paulo SEDE (SP)',
  '55.261.658/0001-49',
  'A definir',
  'luma123motors@gmail.com',
  '11947109121',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'A.M.A. LOCACOES LTDA',
  'A.M.A. LOCACOES LTDA',
  '46.713.490/0001-74',
  'A definir',
  'amalocacoes2025@gmail.com',
  '37988079194',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MC B PEDER LTDA',
  'MC B PEDER LTDA',
  '32.353.141/0001-84',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Barata Ribeiro, N¬∫ 236',
  'm@rcel.com.br',
  '11941369732',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'J R LOCADORA LTDA',
  'J R LOCADORA LTDA',
  '51.432.643/0001-45',
  'A definir',
  '82999442010',
  '3617623484',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LP LOCADORA LTDA',
  'LP LOCADORA LTDA',
  '59.206.716/0001-92',
  'A definir',
  'lplocadora2025@gmail.com',
  '31996001700',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LALU LOCACAO LTDA',
  'LALU LOCACAO LTDA',
  '61.286.097/0001-35',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua RUA BARATA RIBEIRO, N¬∫ 00236',
  'anasommer@uol.com.br',
  '21981251883',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TOA LOCA√á√ïES',
  'TOA LOCA√á√ïES',
  '55.315.049/0001-25',
  'A definir',
  'locagora.toa@gmail.com',
  '31971019865',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'D&S LOCACOES LTDA',
  'D&S LOCACOES LTDA',
  '54.416.350/0002-43',
  'SALVADOR, BA. Bairro BOCA DO RIO, rua AV MESTRE MANOEL, N¬∫ 149',
  'derivaldo_silva+54416350@hotmail.com',
  '7591278626',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Feira de Santana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CC CILINDRADAS - LOCACOES LTDA',
  'CC CILINDRADAS - LOCACOES LTDA',
  '57.209.654/0001-47',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua R. Barata Ribeiro, N¬∫ 236',
  'locagora01@gmail.com',
  '11963802680',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LA MOTO PRIME LTDA',
  'LA MOTO PRIME LTDA',
  '59.412.842/0001-01',
  'TERESINA, PI. Bairro TABULETA, rua AV MIGUEL ROSA, N¬∫ 7500',
  'levoke21@gmail.com',
  '11981824541',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Teresina'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'HSBD LOCACOES DE EQUIPAMENTOS LTDA',
  'HSBD LOCACOES DE EQUIPAMENTOS LTDA',
  '62.189.973/0001-78',
  'SALVADOR, BA. Bairro  BOCA DO RIO, rua  AV MESTRE MANOEL, N¬∫ 149',
  'daniel011280@gmail.com',
  '31996009500',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MARCIO FERREIRA [LAUZANE PAULISTA] - S√ÉO PAULO - SP',
  'MARCIO FERREIRA [LAUZANE PAULISTA] - S√ÉO PAULO - SP',
  '53.480.747/0001-50',
  'A definir',
  'desativado@1724674694381x213477447981763400.com',
  '11963365913',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Bragan√ßa LOCA LEV MOTOCICLETAS LTDA',
  'Bragan√ßa LOCA LEV MOTOCICLETAS LTDA',
  '57.772.686/0001-56',
  'BRAGAN√áA PAULISTA, SP. Bairro Centro, rua Av. Antonio Pires Pimentel, N¬∫ 865',
  'marcodottore@icloud.com',
  '15981223300',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Marco Aur√©lio Nascimento Simas - S√£o Paulo (Sede)  Freguesia',
  'Marco Aur√©lio Nascimento Simas - S√£o Paulo (Sede)  Freguesia',
  '57.208.950/0001-23',
  'A definir',
  'desativado@1727212648500x427414648244010430.com',
  '71999709988',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOKAS RIBEIRAO PRETO LTDA',
  'MOTOKAS RIBEIRAO PRETO LTDA',
  '60.410.101/0001-62',
  'A definir',
  'faertes27@gmail.com',
  '11953573518',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Hissa Loca√ß√µes Limitadas',
  'Hissa Loca√ß√µes Limitadas',
  '59.765.090/0001-54',
  'A definir',
  'michelhissa@gmail.com',
  '4799668040',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Sorocaba - ACS LOCADORA E SERVICOS LTDA',
  'Sorocaba - ACS LOCADORA E SERVICOS LTDA',
  '60.359.753/0001-10',
  'SOROCABA, SP. Bairro Jardim Faculdade, rua Rua Ant√¥nio de Andrade, N¬∫ 276',
  'andercosme@gmail.com',
  '31999999000',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Sorocaba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'KLOC LOCADORA DE VEICULOS LTDA',
  'KLOC LOCADORA DE VEICULOS LTDA',
  '61.914.827/0001-03',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua R ANNE FRANK, N¬∫ 3687',
  'krisflorenzano@hotmail.com',
  '41999971197',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LKM VEICULOS COMERCIO LOCACAO E SERVICOS LTDA',
  'LKM VEICULOS COMERCIO LOCACAO E SERVICOS LTDA',
  '58.076.856/0001-20',
  'A definir',
  'locagora@lkmcomercio.com.br',
  '31997322245',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BAC MOTOS LTDA',
  'BAC MOTOS LTDA',
  '55.877.669/0001-58',
  'A definir',
  'bacmotos1@gmail.com',
  '11917318140',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LUZ D''AGUA',
  'LUZ D''AGUA',
  '9377591000195',
  'A definir',
  'francisneibellini21@gmail.com',
  '16991543362',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CAMARA LOCACOES DE VEICULOS E MOTOCICLETAS LTDA',
  'CAMARA LOCACOES DE VEICULOS E MOTOCICLETAS LTDA',
  '62.283.030/0001-00',
  'A definir',
  'alecpaula1970@gmail.com',
  '11999734614',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PARENTE LOCACAO LTDA',
  'PARENTE LOCACAO LTDA',
  '62.570.398/0001-59',
  'PORTO ALEGRE, RS. Bairro S√ÉO GERALDO, rua AV PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'franciscoparente.47@hotmail.com',
  '1198159118',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TP SARNI ALUGUEL E VENDA LTDA',
  'TP SARNI ALUGUEL E VENDA LTDA',
  '58.316.348/0001-72',
  'A definir',
  'tiagotem5letras@gmail.com',
  '11973107253',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VERANO LOCAMOTO BSB LTDA',
  'VERANO LOCAMOTO BSB LTDA',
  '62.091.302/0001-70',
  'A definir',
  'locverano@gmail.com',
  '61996554074',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCACAO MTS LTDA',
  'LOCACAO MTS LTDA',
  '62.204.608/0001-95',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua R ANNE FRANK, N¬∫ 3687',
  'locacaomts@outlook.com',
  '24981539966',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RUAH MOTOMOV LOCACAO LTDA',
  'RUAH MOTOMOV LOCACAO LTDA',
  '58.031.800/0001-50',
  'A definir',
  'ruahlocacoes@gmail.com',
  '11989980062',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VILMAR PUEHLER MOBILIDADE LTDA',
  'VILMAR PUEHLER MOBILIDADE LTDA',
  '62.235.095/0001-80',
  'A definir',
  '44988094489',
  '5746624993',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VIA LIVRE MOBILIDADE E LOGISTICA LTDA',
  'VIA LIVRE MOBILIDADE E LOGISTICA LTDA',
  '58.274.908/0001-73',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Barata Ribeiro, N¬∫ 236',
  'vialivremoblog@gmail.com',
  '21986691470',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOS GONCALVES LTDA',
  'MOTOS GONCALVES LTDA',
  '60.403.945/0001-86',
  'A definir',
  '47999734852',
  '4444637986',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RAARO SOLUCOES E SERVICOS LTDA',
  'RAARO SOLUCOES E SERVICOS LTDA',
  '19.868.519/0001-14',
  'PAULO DE FARIA, SP. Bairro Canind√©, rua Avenida Cruzeiro do Su, N¬∫ 130',
  'ricardo@raaro.net',
  '11981335546',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'STAR MONEY LTDA',
  'STAR MONEY LTDA',
  '20.690.579/0001-79',
  'BRAGAN√áA PAULISTA, SP. Bairro Centro, rua  Ant√¥nio Pires Pimentel , N¬∫ 865',
  'wanderlei.cruz@starmoney.com.br',
  '11991018049',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Teresina - JB KENES LOCACAO LTDA',
  'Teresina - JB KENES LOCACAO LTDA',
  '57.273.895/0001-55',
  'TERESINA, PI. Bairro Tabuleta, rua Avenida Miguel Rosa, N¬∫ 7500',
  'beatriz.kenes@outlook.com',
  '11994025859',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Teresina'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'M MELO PARDINI LOCACAO DE MOTOS LTDA',
  'M MELO PARDINI LOCACAO DE MOTOS LTDA',
  '58.720.686/0001-75',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Rua Barata Ribeiro, N¬∫ 236',
  'mmelolocagora@gmail.com',
  '11987992227',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FERRAZ LOCACOES LTDA',
  'FERRAZ LOCACOES LTDA',
  '59.131.076/0001-07',
  'S√ÉO LU√çS, MA. Bairro SCIA , rua ST, N¬∫ Q15 CJ 4',
  'vsferraz8@hotmail.com',
  '98981810586',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master São Luís do Maranhão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Romildo Ramos da Silva',
  'Romildo Ramos da Silva',
  '53.565.935/0001-81',
  'A definir',
  'romildoramossilva@gmail.com',
  '1199532188',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTO AGORA LOCACAO DE VEICULOS LTDA',
  'MOTO AGORA LOCACAO DE VEICULOS LTDA',
  '62.637.317/0001-90',
  'FLORIAN√ìPOLIS, SC. Bairro COLONINHA, rua RUA WALDEMAR OURIQUES, N¬∫ 549',
  'moto.agora@yahoo.com',
  '31994040404',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Moto Urbana Servicos de Locacao e Vendas LTDA',
  'Moto Urbana Servicos de Locacao e Vendas LTDA',
  '56.223.351/0001-16',
  'BELO HORIZONTE, MG. Bairro Floresta, rua Rua Marechal Deodoro, N¬∫ 293',
  'igor.coimbra+56223351@gmail.com',
  '24988186781',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Belo Horizonte'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SLS LOCACOES LTDA',
  'SLS LOCACOES LTDA',
  '59.241.328/0001-42',
  'RIBEIR√ÉO PRETO, SP. Bairro vila seixas, rua AV INDEPENDENCIA, N¬∫ 239',
  'negocioslidianeviana@gmail.com',
  '11980889688',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Sorocaba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCNOW LOCACOES LTDA',
  'LOCNOW LOCACOES LTDA',
  '63.572.920/0001-02',
  'A definir',
  '12991650733',
  '24691924809',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'WK Locacoes LTDA',
  'WK Locacoes LTDA',
  '55.478.676/0001-87',
  'A definir',
  '19999337861',
  '9576700876',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DIOGO FERNANDES BARBOSA DA SILVA/ALEXANDRA - S√ÉO PAULO - SP (SEDE)',
  'DIOGO FERNANDES BARBOSA DA SILVA/ALEXANDRA - S√ÉO PAULO - SP (SEDE)',
  '55.726.326/0001-92',
  'A definir',
  'locaqui.barbosa@gmail.com',
  '1699795416',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TEIXEIRA E SOUZA LOCACOES DE MOTOS LTDA',
  'TEIXEIRA E SOUZA LOCACOES DE MOTOS LTDA',
  '58.943.038/0001-88',
  'A definir',
  'luisotavio97@hotmail.com',
  '35999635094',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DMC LOCADORA',
  'DMC LOCADORA',
  '56.011.617/0001-67',
  'A definir',
  'dmclocadora@gmail.com',
  '11934246825',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FELIX LOCA√áOES  - Feira de Santana',
  'FELIX LOCA√áOES  - Feira de Santana',
  '57.741.556/0001-56',
  'A definir',
  'viagenscorporativasgrupoloc@gmail.com',
  '31991373076',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Feira de Santana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ALVORADA RENT LTDA',
  'ALVORADA RENT LTDA',
  '57.884.615/0001-45',
  'S√ÉO PAULO, SP. Bairro Lim√£o, rua Av. Prof. Celestino Bourrou, N¬∫ 581',
  'renanppassador@gmail.com',
  '11943110444',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SOS LOCACOES DE MOTO LTDA',
  'SOS LOCACOES DE MOTO LTDA',
  '62.190.141/0001-71',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua R BARATA RIBEIRO, N¬∫ 00236',
  'simoneornellassoares@gmail.com',
  '21988992637',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LED SALE TECNOLOGIA EM LED IMPORTACAO E EXPORTACAO LTDA',
  'LED SALE TECNOLOGIA EM LED IMPORTACAO E EXPORTACAO LTDA',
  '12.373.693/0001-47',
  'A definir',
  '67998409797',
  '97200441104',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'J A LOCADORA DE MOTOS LTDA - JOS√â VIANA / WILSON - SEDE SP',
  'J A LOCADORA DE MOTOS LTDA - JOS√â VIANA / WILSON - SEDE SP',
  '55.991.890/0001-32',
  'A definir',
  'jjalocadora@gmail.com',
  '67984094888',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  '3DMISS√ÉO',
  '3DMISS√ÉO',
  '55.721.016/0001-85',
  'A definir',
  'diegoguedess87@gmail.com',
  '19991504412',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Fabio Henrique Canal  / Mayra Carraro Di Gregorio  - FMC LOCADORA LTDA',
  'Fabio Henrique Canal  / Mayra Carraro Di Gregorio  - FMC LOCADORA LTDA',
  '57.516.553/0001-19',
  'A definir',
  'fabio.canal@gmail.com',
  '11988934749',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOC MOTO LTDA',
  'LOC MOTO LTDA',
  '59.254.071/0001-63',
  'A definir',
  'leoc.b@hotmail.com',
  '77999153390',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCALUG COMERCIO E LOCACAO DE VEICULOS LTDA',
  'LOCALUG COMERCIO E LOCACAO DE VEICULOS LTDA',
  '55.949.466/0001-20',
  'A definir',
  'gsfavaro@gmail.com',
  '11999766192',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MS LOCADORA DE MOTOS LTDA',
  'MS LOCADORA DE MOTOS LTDA',
  '62.155.744/0001-32',
  'FLORIAN√ìPOLIS, SC. Bairro CAPOEIRAS, rua R WALDEMAR OURIQUES K49501, N¬∫ 549',
  'simonebarroscarla@gmail.com',
  '11947592323',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'YAMASHITA  LOCACAO DE EQUIPAMENTOS  LTDA',
  'YAMASHITA  LOCACAO DE EQUIPAMENTOS  LTDA',
  '61.485.950/0001-48',
  'A definir',
  'solangemyamashita+61485950@gmail.com',
  '11984294741',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LEIA LOCACOES LTDA',
  'LEIA LOCACOES LTDA',
  '58.367.894/0001-32',
  'A definir',
  'l.gomes.a@outlook.com',
  '11940114412',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAMOTO LTDA',
  'LOCAMOTO LTDA',
  '17.591.731/3494-33',
  'SALVADOR, BA. Bairro CAMINHO DAS ARVORES, rua AVENIDA TANCREDO NEVES, N¬∫ 001189',
  'renerodenbeckjr@gmail.com',
  '13996668920',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DGL MOTOS LTDA',
  'DGL MOTOS LTDA',
  '60.928.761/0001-30',
  'A definir',
  'dglmotos@yahoo.com',
  '11992105125',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ML-LOC LTDA',
  'ML-LOC LTDA',
  '61.333.958/0001-99',
  'A definir',
  '11975230103',
  '32690319802',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Hissa Loca√ß√µes Limitadas',
  'Hissa Loca√ß√µes Limitadas',
  '59.765.090/0001-54',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua BARATA RIBEIRO, N¬∫ 236',
  'michelhissa+59765090@gmail.com',
  '4799668040',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Locadora 10X',
  'Locadora 10X',
  '57.753.039/0001-05',
  'A definir',
  'belmontrj+57753039@gmail.com',
  '21994490068',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCMIX RECIFE LTDA',
  'LOCMIX RECIFE LTDA',
  '60.219.163/0001-91',
  'A definir',
  'locmixmotos@gmail.com',
  '32991173276',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'M&C TWO WHEELS CORPORATION LTDA',
  'M&C TWO WHEELS CORPORATION LTDA',
  '58.940.105/0001-00',
  'A definir',
  'mc.corp@myyahoo.com',
  '12982263388',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VARGAS LOC LTDA',
  'VARGAS LOC LTDA',
  '60.999.479/0001-43',
  'A definir',
  'vargasadm@hotmail.com',
  '66999123405',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOLOC LOCADORA LTDA',
  'MOTOLOC LOCADORA LTDA',
  '57.929.239/0001-68',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua BARATA RIBEIRO, N¬∫ 236',
  'lucaugu+57929239@yahoo.com.br',
  '21982344285',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EM LOCACOES E COMERCIO LTDA',
  'EM LOCACOES E COMERCIO LTDA',
  '62.581.225/0001-36',
  'CUIAB√Å, MT. Bairro Cidade Alta, rua Av. Miguel Sutil, N¬∫ 11990',
  'emlocacao220@gmail.com',
  '1699173780',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CAMARGOS LOCACAO DE VEICULOS LTDA',
  'CAMARGOS LOCACAO DE VEICULOS LTDA',
  '52.477.728/0001-02',
  'SOROCABA, SP. Bairro JARDIM FACULDADE, rua RUA ANTONIO DE ANDRADE, N¬∫ 276',
  'marcelo.consultoriaimagem@gmail.com',
  '11950215005',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Sorocaba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'WESLEY DE O DIAS',
  'WESLEY DE O DIAS',
  '51.783.092/0001-64',
  'A definir',
  'wesleyodias@gmail.com',
  '11980429461',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VJW LOCADORA LTDA',
  'VJW LOCADORA LTDA',
  '60.950.544/0001-46',
  'A definir',
  'vjwlocadora@gmail.com',
  '41985017156',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'NGP LOCADORA DE VEICULOS LTDA',
  'NGP LOCADORA DE VEICULOS LTDA',
  '62.155.776/0001-38',
  'FLORIAN√ìPOLIS, SC. Bairro COLONINHA, rua R WALDEMAR OURIQUES, N¬∫ 549',
  'ngplocadora@gmail.com',
  '32991063242',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA CB LTDA',
  'LOCAGORA CB LTDA',
  '58.749.633/0001-87',
  'A definir',
  'alti.neto@hotmail.com',
  '31983489252',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JAC EXPERIENCIAS LTDA',
  'JAC EXPERIENCIAS LTDA',
  '57.674.469/0001-23',
  'A definir',
  'carvalhoagsm@gmail.com',
  '11998554851',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TARGET COMERCIO DE ALUGUEL DE VEICULOS LTDA',
  'TARGET COMERCIO DE ALUGUEL DE VEICULOS LTDA',
  '61.067.360/0001-03',
  'A definir',
  '11993625449',
  '22628966824',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ELEVEN LOC LTDA',
  'ELEVEN LOC LTDA',
  '59.468.175/0001-70',
  'A definir',
  'elevenloc@gmail.com',
  '11945024676',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GABRIEL SCORSATO LOCACAO DE MOTOS LTDA',
  'GABRIEL SCORSATO LOCACAO DE MOTOS LTDA',
  '60.392.300/0001-95',
  'A definir',
  'dscorsato@icloud.com',
  '54996610452',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA BELO HORIZONTE',
  'LOCAGORA BELO HORIZONTE',
  '48.449.181/0001-64',
  'A definir',
  'financeiro+48449181@locagoraveiculos.com.br',
  '319910997',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Belo Horizonte'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DANDOLINI LOCADORA LTDA',
  'DANDOLINI LOCADORA LTDA',
  '63.242.808/0001-03',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AVENIDA MIGUEL SUTIL, N¬∫ 11990',
  'leandrodandolini@gmail.com',
  '48984657923',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JB KENES LOCACAO LTDA',
  'JB KENES LOCACAO LTDA',
  '57.273.895/0001-55',
  'S√ÉO PAULO, SP. Bairro Lim√£o , rua Av Celestino Bourrol, N¬∫ 581',
  'beatriz.kenes@gmail.com',
  '1194025859',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'S√£o Jos√© Oper√°rio Servi√ßos LTDA',
  'S√£o Jos√© Oper√°rio Servi√ßos LTDA',
  '60.000.380/0001-96',
  'TERESINA, PI. Bairro TABULETA, rua Av Miguel Rosa, N¬∫ 7500',
  'ana.bezerra@outlook.com',
  '86994181797',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Teresina'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ZR Motos - Cezar Alencar de Souza Reis - SEDE - SP',
  'ZR Motos - Cezar Alencar de Souza Reis - SEDE - SP',
  '57.736.477/0001-57',
  'PAULO DE FARIA, SP. Bairro Lim√£o, rua Av. Prof. Celestino Bourroul, N¬∫ 581',
  'condominiozr@gmail.com',
  '17996763570',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DEUJOL EMPREENDIMENTOS LTDA',
  'DEUJOL EMPREENDIMENTOS LTDA',
  '61.994.359/0001-16',
  'SOROCABA, SP. Bairro JARDIM FACULDADE, rua RUA VALDEMAR OURIQUES, N¬∫ 276',
  'osvaldoleivas88+61994359@gmail.com',
  '11988145353',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Sorocaba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCFLASH LOCADORA DE VEICULOS LTDA',
  'LOCFLASH LOCADORA DE VEICULOS LTDA',
  '61.251.232/0001-07',
  'A definir',
  'marcelo@cresposoares.com.br',
  '31983990149',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'W&W LOCADORA DE VEICULOS LTDA',
  'W&W LOCADORA DE VEICULOS LTDA',
  '3538721800012',
  'SALVADOR, BA. Bairro PIAT√É, rua RUA DOS AZUL√ïES, N¬∫ 0',
  'wiliaquison+35387218@gmail.com',
  '7198328293',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Feira de Santana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ABDALA LEANDR MOTO FACIL LTDA',
  'ABDALA LEANDR MOTO FACIL LTDA',
  '57.691.815/0001-81',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Rua Barata Ribeiro, N¬∫ 236',
  'abdalacard+57691815@yahoo.com.br',
  '21999255318',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VIT√ìRIA LOCADORA DE VE√çCULOS LTDA',
  'VIT√ìRIA LOCADORA DE VE√çCULOS LTDA',
  '57.917.723/0001-77',
  'A definir',
  'daniel@vitorialocadora.com.br',
  '31988951000',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LIBERTA RODAS LTDA',
  'LIBERTA RODAS LTDA',
  '59.024.960/0001-34',
  'A definir',
  'libertarodas.loc@gmail.com',
  '11971481873',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Marte locacao e comercio de veiculos',
  'Marte locacao e comercio de veiculos',
  '54.467.301/0001-59',
  'S√ÉO PAULO, SP. Bairro Lim√£o, rua Av. Prof. Celestino Bourroul, N¬∫ 581',
  'marteloc@outlook.com.br',
  '11992732401',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCALMEIDA LTDA',
  'LOCALMEIDA LTDA',
  '57.447.990/0001-28',
  'A definir',
  'frlocagoraalmeida@gmail.com',
  '11958466914',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FAST MOTOS LTDA',
  'FAST MOTOS LTDA',
  '58.177.136/0001-51',
  'TERESINA, PI. Bairro Tabuleta, rua Avenida Miguel Rosa, N¬∫ 7500',
  'contato@selfzap.com.br',
  '33988136689',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Teresina'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MIRA NEGOCIOS DE LOCACAO LTDA',
  'MIRA NEGOCIOS DE LOCACAO LTDA',
  '61.370.000/0001-78',
  'A definir',
  '88996710011',
  '31088570372',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LCBB LTDA',
  'LCBB LTDA',
  '60.974.529/0001-38',
  'A definir',
  '31984053599',
  '6713687610',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DONA SOLUCOES LTDA',
  'DONA SOLUCOES LTDA',
  '57.725.136/0001-86',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua R BARATA RIBEIRO, N¬∫ 236',
  'solucoesdona@gmail.com',
  '43988332030',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MAD MAX LOCACAO E TRANSPORTES LTDA',
  'MAD MAX LOCACAO E TRANSPORTES LTDA',
  '57.438.672/0001-09',
  'S√ÉO PAULO, SP. Bairro Lim√£o, rua Av. Prof. Celestino Bourroul, N¬∫ 581',
  'fmpelosi7@gmail.com',
  '11982068338',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MR ALUGUEL DE VEICULOS LTDA',
  'MR ALUGUEL DE VEICULOS LTDA',
  '61.863.260/0001-85',
  'SALVADOR, BA. Bairro Boca do Rio, rua Avenida Mestre Manoel, N¬∫ 149',
  'marcio.romer+61863260@gmail.com',
  '71981637302',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PJP VENTURE GROUP LTDA',
  'PJP VENTURE GROUP LTDA',
  '62.029.655/0001-40',
  'JO√ÉO PESSOA, PB. Bairro ESTADOS, rua AVENIDA PRESIDENTE EPIT√ÅCIO PESSOA, N¬∫ 1251',
  'pjpventuregroup@gmail.com',
  '24998761509',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  '2 IRM√ÉOS LOCA√áOES',
  '2 IRM√ÉOS LOCA√áOES',
  '55.446.299/0001-02',
  'A definir',
  'ricardobvieira1@gmail.com',
  '11937111979',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MAJESDRAS LOCACAO LTDA',
  'MAJESDRAS LOCACAO LTDA',
  '61.886.736/0001-01',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua RUA BARATA RIBEIRO, N¬∫ 00236',
  'oceancorretoraseguros+61886736@gmail.com',
  '21999763180',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LLC LOCACOES DE MOTOS LTDA',
  'LLC LOCACOES DE MOTOS LTDA',
  '60.808.909/0001-00',
  'TERESINA, PI. Bairro TABULETA, rua AV MIGUEL ROSA, N¬∫ 7500',
  'leonardo@brasiliamedico.com.br',
  '6199453048',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Teresina'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LEOBAHR Com√©rcio  LTDA',
  'LEOBAHR Com√©rcio  LTDA',
  '59.655.593/0001-77',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua RUA BARATA RIBEIRO, N¬∫ 236',
  'leo.leobahr+59655593@gmail.com',
  '1199643522',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Locautoficial Ltda',
  'Locautoficial Ltda',
  '59.826.745/0001-57',
  'A definir',
  'locautoficial@gmail.com',
  '11975892025',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LETAMOTOS LOCADORA LTDA',
  'LETAMOTOS LOCADORA LTDA',
  '58.034.733/0001-27',
  'RIO DE JANEIRO, RJ. Bairro Copacabana , rua Barata Ribeiro , N¬∫ 236',
  'lepradol+58034733@hotmail.com',
  '3599232015',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ADDJUNTOS LOCADORA DE VEICULOS LTDA',
  'ADDJUNTOS LOCADORA DE VEICULOS LTDA',
  '60.148.637/0001-51',
  'A definir',
  'afraniohw@gmail.com',
  '1699813712',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MGBC LOCACAO DE MOTOS LTDA',
  'MGBC LOCACAO DE MOTOS LTDA',
  '62.518.851/0001-88',
  'A definir',
  'mgbc.locagora@gmail.com',
  '19996871987',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'IPA CONCESSIONARIA DE VEICULOS LTDA - RJ - COPACABANA',
  'IPA CONCESSIONARIA DE VEICULOS LTDA - RJ - COPACABANA',
  '57.007.612/0001-23',
  'A definir',
  'loc_comercial+57007612@outlook.com',
  '21968641371',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TN LOCA.SOBRERODAS LTDA - SP SEDE',
  'TN LOCA.SOBRERODAS LTDA - SP SEDE',
  '57.349.133/0001-95',
  'A definir',
  'nubia_regina23@hotmail.com',
  '62984302513',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BRISOLLA MOTOS LTDA',
  'BRISOLLA MOTOS LTDA',
  '62.878.409/0001-62',
  'A definir',
  '13974039587',
  '5014073832',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VT - LOC COMERCIO E LOCACAO DE MOTOCICLETAS LTDA',
  'VT - LOC COMERCIO E LOCACAO DE MOTOCICLETAS LTDA',
  '57.238.724/0001-95',
  'A definir',
  'vicente.teixeira10@yahoo.com.br',
  '11991156591',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Igor Rodrigues da Silva - S√£o Paulo - SP (Sede) GERENCI√ÅVEL',
  'Igor Rodrigues da Silva - S√£o Paulo - SP (Sede) GERENCI√ÅVEL',
  '55.421.758/0001-95',
  'PAULO DE FARIA, SP. Bairro CANIND√â, rua AV CRUZEIRO DO SUL, N¬∫ 130',
  'tjocaetano@gmail.com',
  '11981037012',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'G&G LOCA√á√ïES AUTOMOTIVAS - sede',
  'G&G LOCA√á√ïES AUTOMOTIVAS - sede',
  '57.656.066/0001-51',
  'SALVADOR, BA. Bairro Boca do Rio, rua Avenida mestre manuel , N¬∫ 149',
  'gileno@portalf.com.br',
  '7192044740',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ARR LOCACOES LTDA',
  'ARR LOCACOES LTDA',
  '57.204.573/0001-54',
  'A definir',
  'atividadecomercial@gmail.com',
  '11969792062',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Jo√£o  Daniel Remiro Barroso - Franquia Fortaleza',
  'Jo√£o  Daniel Remiro Barroso - Franquia Fortaleza',
  '61.812.739/0001-92',
  'A definir',
  'locfortal2025@gmail.com',
  '17981825354',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCABIKE ADMINISTRACAO E GESTAO LTDA',
  'LOCABIKE ADMINISTRACAO E GESTAO LTDA',
  '57.104.195/0001-37',
  'A definir',
  'locabikesp@gmail.com',
  '31995895925',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JVG COMERCIAL LTDA',
  'JVG COMERCIAL LTDA',
  '60.835.655/0001-01',
  'A definir',
  '41997642047',
  '70983429987',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VIA LIVRE LOCADORA DE MOTOS LTDA',
  'VIA LIVRE LOCADORA DE MOTOS LTDA',
  '58.812.938/0001-96',
  'A definir',
  'vinicius.locagora@gmail.com',
  '41998288989',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'A.M. DELGADO LTDA',
  'A.M. DELGADO LTDA',
  '62.526.370/0001-14',
  'FLORIAN√ìPOLIS, SC. Bairro COLONINHA, rua RUA WALDEMAR OURIQUES, N¬∫ 549',
  'adrianamdelgado@gmail.com',
  '12982838189',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCDAY LTDA',
  'LOCDAY LTDA',
  '62.273.416/0001-30',
  'A definir',
  'penadaywisonn@gmail.com',
  '85996373487',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GA BARONE LOCADORA LTDA',
  'GA BARONE LOCADORA LTDA',
  '57.829.237/0001-05',
  'A definir',
  '19971711510',
  '45251175833',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'A Teodoro da Silva LTDA',
  'A Teodoro da Silva LTDA',
  '61.751.924/0001-14',
  'BRAGAN√áA PAULISTA, SP. Bairro CENTRO, rua AVENIDA ANTONIO PIRES PIMENTEL, N¬∫ 865',
  'locafacil.locadoraveiculos.aju@gmail.com',
  '53999647106',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CARBON MOTOS LTDA',
  'CARBON MOTOS LTDA',
  '60.512.248/0001-63',
  'A definir',
  '92999895783',
  '8423826821',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JL LOCACOES LTDA',
  'JL LOCACOES LTDA',
  '59.970.394/0001-53',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua BARATA RIBEIRO, N¬∫ 236',
  'lenzij+59970394@gmail.com',
  '21991371179',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Fillipe Felix - SALVADOR (Antiga ACRP LOCACAO)',
  'Fillipe Felix - SALVADOR (Antiga ACRP LOCACAO)',
  '10080207618',
  'SALVADOR, BA. Bairro BOCA DO RIO, rua AV MESTRE MANOEL, N¬∫ N¬∫ 149',
  'viagenscorporativasgrupoloc+10080207@gmail.com',
  '31991373076',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PROMOTO ALUGUEL DE MOTOS LTDA',
  'PROMOTO ALUGUEL DE MOTOS LTDA',
  '63.275.784/0001-80',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AV MIGUEL SUTIL, N¬∫ 11990',
  'richard.nogueira01@gmail.com',
  '51998070001',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Bragan√ßa JA. LOCACAOES DIVERSAS LTD',
  'Bragan√ßa JA. LOCACAOES DIVERSAS LTD',
  '57.884.529/0001-32',
  'BRAGAN√áA PAULISTA, SP. Bairro Centro, rua Av.  Antonio pires pimentel, N¬∫ 865',
  'ja.locacoesmotoslocagora@gmail.com',
  '61996580589',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MADUAN LOCA√á√ïES E COMERCIO LTDA',
  'MADUAN LOCA√á√ïES E COMERCIO LTDA',
  '11.098.236/0001-29',
  'A definir',
  'angelo.eleuterio@yahoo.com.br',
  '31983397478',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MAJU LOCAR LTDA',
  'MAJU LOCAR LTDA',
  '57.430.510/0001-16',
  'S√ÉO PAULO, SP. Bairro Lim√£o, rua Av. Prof. Celestino Bourroul, N¬∫ 581',
  'jubertcx@gmail.com',
  '34991058373',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MARCOS ALCANTARA LIMA JUNIOR (S√ÉO PAULO - SP )',
  'MARCOS ALCANTARA LIMA JUNIOR (S√ÉO PAULO - SP )',
  '21.415.423/0001-42',
  'PAULO DE FARIA, SP. Bairro REP√öBLICA, rua RUA 24 DE MAIO, N¬∫ 35',
  'marcoslj79@gmail.com',
  '1198546565',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'M2F LOCADORA DE MOTOS LTDA',
  'M2F LOCADORA DE MOTOS LTDA',
  '61.287.674/0001-03',
  'A definir',
  'gtrevizani40@gmail.com',
  '11971332527',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DW2S LOCACOES LTDA',
  'DW2S LOCACOES LTDA',
  '62.498.339/0001-17',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua RUA ANNE FRANK, N¬∫ 3687',
  'wterra2000@bol.com.br',
  '92815400061',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ABX LOCACAO LTDA ME',
  'ABX LOCACAO LTDA ME',
  '61.256.171/0001-70',
  'RIO DE JANEIRO, RJ. Bairro JACAREPAGUA, rua LUIS SERGIO PERSON, N¬∫ 127',
  'xandinhomaf@hotmail.com',
  '24993119229',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VECHIATTO & FERNANDES LTDA',
  'VECHIATTO & FERNANDES LTDA',
  '61.154.025/0001-34',
  'JO√ÉO PESSOA, PB. Bairro Jaguaribe, rua Avenida capit√£o Jos√© pessoa, N¬∫ 379',
  'jsfernandes2000@yahoo.com.br',
  '17991124082',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCA AGORA BSB LOCACOES LTDA',
  'LOCA AGORA BSB LOCACOES LTDA',
  '58.998.460/0001-30',
  'A definir',
  'alexandre.butrico@gmail.com',
  '11981798618',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAMOTOOFICIAL',
  'LOCAMOTOOFICIAL',
  '54.930.245/0001-47',
  'A definir',
  'renatareisoficial@gmail.com',
  '11950612502',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SALAZAR MOTOS',
  'SALAZAR MOTOS',
  '57.646.734/0001-60',
  'TERESINA, PI. Bairro HORTO , rua HOMERO CASTELO BRANCO , N¬∫ 1956',
  'vinicius.sal@hotmail.com',
  '86999189191',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Teresina'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FC LOCACAO DE MOTOS LTDA',
  'FC LOCACAO DE MOTOS LTDA',
  '55.675.066/0001-73',
  'A definir',
  'fclocmotos@gmail.com',
  '31988849403',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MASTER LOCACOES LTDA',
  'MASTER LOCACOES LTDA',
  '58.861.652/0001-09',
  'A definir',
  'ana.paula@jrferragens.com',
  '37998054254',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ITALIA MOTOS LTDA',
  'ITALIA MOTOS LTDA',
  '62.164.434/0001-84',
  'A definir',
  'italiamotocicletas@gmail.com',
  '6191674910',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ECO LOCADORA DE MOTOS LTDA',
  'ECO LOCADORA DE MOTOS LTDA',
  '57.332.482/0001-02',
  'S√ÉO LU√çS, MA. Bairro Vinhais III, rua Avenida Geronimo de Albuquerque Maranh√£o, N¬∫ 2070',
  'fmarinho@gpmmoura.com.br',
  '98991721961',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master São Luís do Maranhão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CAMERA MOTO LOCADORA LTDA',
  'CAMERA MOTO LOCADORA LTDA',
  '62.187.938/0001-10',
  'PORTO ALEGRE, RS. Bairro SAO GERALDO, rua AVENIDA PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'cameramotoloc@gmail.com',
  '54999754739',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCADORA CANAA LTDA',
  'LOCADORA CANAA LTDA',
  '62.505.104/0001-05',
  'MANAUS, AM. Bairro SAO FRANCISCO, rua RUA SOBRINHO MARANHAO, N¬∫ 310',
  'joaasjunior@gmail.com',
  '75999741618',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Manaus'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LORD LOCACOES E COMERCIO DE MOTOS LTDA',
  'LORD LOCACOES E COMERCIO DE MOTOS LTDA',
  '57.485.137/0001-09',
  'A definir',
  'jelocagora@gmail.com',
  '12988087717',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FIGUEROA COMERCIO E LOCACOES LTDA',
  'FIGUEROA COMERCIO E LOCACOES LTDA',
  '60.578.736/0001-73',
  'A definir',
  'figueroaloc@gmail.com',
  '31999820321',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DALTON COMERCIO E LOCA√á√ÉO',
  'DALTON COMERCIO E LOCA√á√ÉO',
  '55.946.162/0001-09',
  'S√ÉO PAULO, SP. Bairro Lim√£o, rua AV PROFESSOR CELESTINO BUROL , N¬∫ 581',
  'daltonsilva82@hotmail.com',
  '11967515336',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'A. R. N. LOCACAO DE VEICULOS LTDA',
  'A. R. N. LOCACAO DE VEICULOS LTDA',
  '57.362.223/0001-16',
  'A definir',
  'desativado@1730376105916x820567047112851800.com',
  '11942683989',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RODLOC LOCACAO DE VEICULOS LTDA',
  'RODLOC LOCACAO DE VEICULOS LTDA',
  '58.214.311/0001-33',
  'A definir',
  'siqueirarodrigo@hotmail.com',
  '31988195997',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GHANSTED LTDA',
  'GHANSTED LTDA',
  '61.947.829/0001-90',
  'A definir',
  'guilhermehansted@gmail.com',
  '19982381886',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LFM ve√≠culos Ltda',
  'LFM ve√≠culos Ltda',
  '57.845.459/0001-03',
  'A definir',
  'lfmveiculos@gmail.com',
  '41992902960',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'HORIZONTE LOCACOES LTDA',
  'HORIZONTE LOCACOES LTDA',
  '59.000.060/0001-57',
  'A definir',
  'joaooliveira.alves@yahoo.com.br',
  '91984809471',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LLM COMERCIO, SERVICOS E REPRESNTACOES LTDA',
  'LLM COMERCIO, SERVICOS E REPRESNTACOES LTDA',
  '57.823.632/0001-72',
  'A definir',
  'desativado@1738871101922x128944668546721490.com',
  '11983808380',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JN LOCA√á√ïES LTDA',
  'JN LOCA√á√ïES LTDA',
  '58.038.476/0001-00',
  'S√ÉO PAULO, SP. Bairro Tatuap√©, rua Nova Jerusal√©m , N¬∫ 807',
  'ml99p@hotmail.com',
  '47997439524',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MEGAPODIUM MOTOS LTDA',
  'MEGAPODIUM MOTOS LTDA',
  '11.573.312/0001-00',
  'A definir',
  'nelson@uol.com.br',
  '31985963256',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'D&S LOCA√á√ïES',
  'D&S LOCA√á√ïES',
  '54.416.350/0001-62',
  'A definir',
  'derilocacoes@gmail.com',
  '7591278626',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA LOCA√á√ïES LTDA',
  'LOCAGORA LOCA√á√ïES LTDA',
  '58.992.458/0001-54',
  'TERESINA, PI. Bairro TABULETA, rua AVENIDA MIGUEL ROSA, N¬∫ 7500',
  'cesar.augusto1484@gmail.com',
  '31999711856',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Teresina'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VM VIOLADA MOBILIDADE LTDA',
  'VM VIOLADA MOBILIDADE LTDA',
  '62.521.839/0001-22',
  'CURITIBA, PR. Bairro Boqueir√£o, rua Rua Anne Frank, N¬∫ 3687',
  'vmvioladamobilidade@gmail.com',
  '44999177668',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'A2X LOCADORA DE VEICULOS LTDA',
  'A2X LOCADORA DE VEICULOS LTDA',
  '56.931.109/0001-05',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Barata Ribeiro, N¬∫ 236',
  'alexsouza1307@gmail.com',
  '21964919066',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCADORA RICARDO BRAGA LTDA',
  'LOCADORA RICARDO BRAGA LTDA',
  '58.179.555/0001-22',
  'A definir',
  'locadoraricardobraga@gmail.com',
  '11983811055',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTHOBAR LTDA',
  'MOTHOBAR LTDA',
  '63.742.810/0001-33',
  'A definir',
  'estevescv06@gmail.com',
  '1999691827',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Moyses Yosef Serruya Benmuyal Pimenta - SEDE - SP',
  'Moyses Yosef Serruya Benmuyal Pimenta - SEDE - SP',
  '55.342.556/0001-58',
  'A definir',
  'moyses_pimenta@hotmail.com',
  '91992704030',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Pinheiro Loca√ß√£o Ltda',
  'Pinheiro Loca√ß√£o Ltda',
  '59.162.864/0001-52',
  'SALVADOR, BA. Bairro Boca do Rio, rua Avenida Mestre Manoel, N¬∫ 149',
  'gabipinheiro00@hotmail.com',
  '71993792217',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'M DE OLIVEIRA FREITAS COMERCIO DE MOTOCICLETAS LTDA',
  'M DE OLIVEIRA FREITAS COMERCIO DE MOTOCICLETAS LTDA',
  '61.324.452/0001-13',
  'A definir',
  'marlon.msoli@gmail.com',
  '17991307806',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCMOTOMK LTDA',
  'LOCMOTOMK LTDA',
  '6305106100010',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AVENIDA MIGUEL SUTIL, N¬∫ 11990',
  'locmotomk@gmail.com',
  '47991697545',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'V.P. LOCACAO E SERVICOS LTDA',
  'V.P. LOCACAO E SERVICOS LTDA',
  '61.360.504/0001-07',
  'A definir',
  '11993198018',
  '5229094850',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MG Rental Motos - S√£o Paulo',
  'MG Rental Motos - S√£o Paulo',
  '56.993.324/0001-22',
  'Salvador,BA, Bairro Boca do Rio Salvador, Mestre Manuel, 149',
  'mgrentalmotos@gmail.com',
  '31999490110',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'POTENCIAL SOLUCOES LTDA',
  'POTENCIAL SOLUCOES LTDA',
  '17.498.678/0001-49',
  'A definir',
  'contato@potencialgarden.com.br',
  '11972131069',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MC B PEDER LTDA',
  'MC B PEDER LTDA',
  '32.353.141/0001-84',
  'A definir',
  'm+32353141@rcel.com.br',
  '11941369732',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PAPA LEGUAS LOCADORA LTDA',
  'PAPA LEGUAS LOCADORA LTDA',
  '62.007.833/0001-31',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua RUA ANNE FRANK, N¬∫ 3687',
  'jocasilveira@gmail.com',
  '24999893799',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'INTERMOBI LOCACOES E SERVICOS LTDA',
  'INTERMOBI LOCACOES E SERVICOS LTDA',
  '57.584.236/0001-30',
  'S√ÉO PAULO, SP. Bairro Lim√£o, rua  Av. Prof. Celestino Bourroul, , N¬∫ 581',
  'intermobi@intermobi.com.br',
  '11976094672',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'H E C ALUGUEL DE MOTOS LTDA',
  'H E C ALUGUEL DE MOTOS LTDA',
  '63.102.882/0001-16',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AVENIDA MIGUEL SUTIL, N¬∫ 11990',
  'dragaoicl@uol.com.br',
  '67984036319',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ITAPOA MOBILIDADE LTDA',
  'ITAPOA MOBILIDADE LTDA',
  '61.222.438/0001-09',
  'SALVADOR, BA. Bairro CAMINHO DAS ARVORES, rua AV TANCREDO NEVES, N¬∫ 001189',
  'eduardodtbruder@gmail.com',
  '1196412465',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'KALU LOCACAO AUTOMOTIVA LTDA',
  'KALU LOCACAO AUTOMOTIVA LTDA',
  '58.248.348/0001-82',
  'R. Barata Ribeiro, 236 - Copacabana',
  'kalulocacoes2025+58248348@gmail.com',
  '11948992629',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'UNICA G&A LOCADORA DE VEICULOS LTDA',
  'UNICA G&A LOCADORA DE VEICULOS LTDA',
  '53.724.818/0001-13',
  'A definir',
  'locagorasaopaulo@gmail.com',
  '1194060552',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'WINGS LOCADORA DE VEICULOS LTDA',
  'WINGS LOCADORA DE VEICULOS LTDA',
  '62.515.757/0001-75',
  'A definir',
  'fsdiasdf@gmail.com',
  '17932345037',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FOREVER LOCADORA LTDA',
  'FOREVER LOCADORA LTDA',
  '60.741.114/0001-14',
  'A definir',
  'michelcorretor92148@gmail.com',
  '11961504645',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'KAD21 LOCA√á√ïES LTDA',
  'KAD21 LOCA√á√ïES LTDA',
  '59.397.533/0001-00',
  'R. Barata Ribeiro, 236 - Copacabana',
  'luciano.kovac+59397533@me.com',
  '62999402029',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'M. B. R. - LOCACAO E COMERCIO LTDA',
  'M. B. R. - LOCACAO E COMERCIO LTDA',
  '5794034900012',
  'BELO HORIZONTE, MG. Bairro Floresta, rua Rua Marechal Deodoro, N¬∫ 293',
  'alvaronetodublin+57940349@gmail.com',
  '82991327272',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floresta'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'A DE O COSTA COSTA LOCA√áOES',
  'A DE O COSTA COSTA LOCA√áOES',
  '60.467.037/0001-56',
  'A definir',
  '21981960449',
  '345414705',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ARAN LOCADORA DE MOTOS LTDA',
  'ARAN LOCADORA DE MOTOS LTDA',
  '52.764.913/0001-88',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA , rua RUA BARATA RIBEIRO , N¬∫ 236',
  'locagoraroorj@gmail.com',
  '6699027564',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'NARDELI LOCADORA DE VEICULOS LTDA',
  'NARDELI LOCADORA DE VEICULOS LTDA',
  '61.168.680/0001-41',
  'A definir',
  'sidneinardeli@cardiotorax.com.br',
  '71981136941',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTO CERTA LOCADORA LTDA',
  'MOTO CERTA LOCADORA LTDA',
  '62.028.377/0001-06',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua RUA ANNE FRANK, N¬∫ 3687',
  'roccaporena@rocca-porena.com',
  '41933563233',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA - SEDE COPACAPABA',
  'LOCAGORA - SEDE COPACAPABA',
  '48.444.918/1000-24',
  'A definir',
  'financeirocopacabana@locagoraveiculos.com.br',
  '3191373076',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MJ LOCACOES LTDA',
  'MJ LOCACOES LTDA',
  '57.249.784/0001-03',
  'A definir',
  'ferrer_928@hotmail.com',
  '31993414374',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'HNA LOCACOES ESPECIALIZADAS DE VEICULOS LTDA',
  'HNA LOCACOES ESPECIALIZADAS DE VEICULOS LTDA',
  '58.185.916/0001-43',
  'A definir',
  'riquenovaes@yahoo.com.br',
  '22997599442',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAQUI MOTOS',
  'LOCAQUI MOTOS',
  '54.086.544/0001-47',
  'S√ÉO PAULO, SP. Bairro Lim√£o, rua Avenida Professor Celestino Borrou , N¬∫ 581',
  'locaquimotos@gmail.com',
  '11961147848',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAMOTO NORDESTE LTDA',
  'LOCAMOTO NORDESTE LTDA',
  '61.588.495/0001-06',
  'A definir',
  'valdecir@fontestec.com.br',
  '81997692121',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MBGL SOLUCOES LTDA',
  'MBGL SOLUCOES LTDA',
  '62.053.133/0001-83',
  'A definir',
  'fabio@graficasarapui.com.br',
  '11999383700',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'KS LOCACOES LTDA',
  'KS LOCACOES LTDA',
  '63.336.321/0001-81',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AVENIDA MIGUEL SUTIL, N¬∫ 11990',
  'sandrobezerra.investimentos@gmail.com',
  '63991138848',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'COUTINHO LOCADORA LTDA',
  'COUTINHO LOCADORA LTDA',
  '57.314.816/0001-07',
  'A definir',
  'coutinhodiasf@gmail.com',
  '11948175060',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FL RENTAL LTDA',
  'FL RENTAL LTDA',
  '61.417.024/0001-35',
  'A definir',
  'fred.flrental@gmail.com',
  '35999638033',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GASPAR & ANDRADE SERVICOS LTDA',
  'GASPAR & ANDRADE SERVICOS LTDA',
  '56.261.176/0001-51',
  'A definir',
  'gasparandradeservicos@gmail.com',
  '11915093096',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DINIZ GUERRA LOCADORA LTDA',
  'DINIZ GUERRA LOCADORA LTDA',
  '59.081.217/0001-16',
  'A definir',
  'mqguerra@gmail.com',
  '3199636630',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DANTASCAR VEICULOS LTDA',
  'DANTASCAR VEICULOS LTDA',
  '56.608.864/0001-45',
  'R. Barata Ribeiro, 236 - Copacabana',
  'marcocdantad73+56608864@gmail.com',
  '22974030463',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'IDEAL LOCACAO DE MOTOS LTDA',
  'IDEAL LOCACAO DE MOTOS LTDA',
  '61.699.407/0001-43',
  'JO√ÉO PESSOA, PB. Bairro TORRE, rua AVENIDA NOSSA SENHORA DE F√ÅTIMA, N¬∫ 1347',
  'ideallocacaodemotos@gmail.com',
  '31988027212',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAL SERVICOS DE LOCACAO LTDA',
  'LOCAL SERVICOS DE LOCACAO LTDA',
  '59.865.567/0001-73',
  'A definir',
  'fortaleza.ricardo@gmail.com',
  '85984321415',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'R F DE PAULA LTDA',
  'R F DE PAULA LTDA',
  '63.215.904/0001-54',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AV MIGUEL SUTIL, N¬∫ 11990',
  'geograforobson@gmail.com',
  '42999124668',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'A E LOCAMOTOS LTDA',
  'A E LOCAMOTOS LTDA',
  '57.350.173/0001-57',
  'A definir',
  'andriefersonvieira@gmail.com',
  '11999342284',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MARCIO GOMES LOCACOES LTDA',
  'MARCIO GOMES LOCACOES LTDA',
  '59.935.266/0001-79',
  'A definir',
  'marcio@conectadaenergia.com.br',
  '62991006525',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PGS MOTOS LTDA',
  'PGS MOTOS LTDA',
  '59.968.970/0001-28',
  'A definir',
  '4199641406',
  '56388551904',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GIUSEPPE ANNUNZIATA SERVI√áOS',
  'GIUSEPPE ANNUNZIATA SERVI√áOS',
  '54.952.614/0001-00',
  'A definir',
  'gannunziata@hotmail.com',
  '1305393778',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ST BUSINESS LTDA',
  'ST BUSINESS LTDA',
  '60.438.235/0001-91',
  'TERESINA, PI. Bairro TABULETA, rua AV MIGUEL ROSA, N¬∫ 7500',
  'sandrotonholo@gmail.com',
  '11982230183',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Teresina'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOMOVE LOCADORA LTDA',
  'MOTOMOVE LOCADORA LTDA',
  '61.158.263/0001-18',
  'JO√ÉO PESSOA, PB. Bairro ESTADOS, rua AV PRESIDENTE EPIT√ÅCIO PESSOA, N¬∫ 1251',
  'robbsonjunior@hotmail.com',
  '11987395706',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'OEX INVESTIMENTOS',
  'OEX INVESTIMENTOS',
  '54.755.936/0001-51',
  'S√ÉO PAULO, SP. Bairro Lim√£o, rua Av. Prof. Celestino Bourroul, N¬∫ 581',
  'gustavopclopes@gmail.com',
  '11988433027',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOFACIL LOCACAO E VENDA DE AUTOMOVEIS E MOTOCICLETAS LTDA',
  'MOTOFACIL LOCACAO E VENDA DE AUTOMOVEIS E MOTOCICLETAS LTDA',
  '58.188.875/0001-49',
  'A definir',
  'motofacilfortalezace@gmail.com',
  '85997316060',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SOROCABA - NOVA VIDA GO LTDA',
  'SOROCABA - NOVA VIDA GO LTDA',
  '59.750.283/0001-31',
  'SOROCABA, SP. Bairro VILA SEIXAS, rua AVENIDA INDEPENDENCIA, N¬∫ 239',
  'novavidagosorocaba@gmail.com',
  '16999767793',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Sorocaba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'M.A.S. LOCACAO DE MOTOS LTDA',
  'M.A.S. LOCACAO DE MOTOS LTDA',
  '62.503.664/0001-20',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua R ANNE FRANK, N¬∫ 3687',
  'temporada.adm@gmail.com',
  '11972005880',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BOULEVARD LOCADORA DE MOTOS LTDA',
  'BOULEVARD LOCADORA DE MOTOS LTDA',
  '10.358.797/0001-57',
  'A definir',
  'boulevardlocadorademotos@gmail',
  '71986284200',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  '2A LOCACOES E COMERCIO LTDA',
  '2A LOCACOES E COMERCIO LTDA',
  '60.021.215/0001-10',
  'A definir',
  'locacoes2a@gmail.com',
  '31982018285',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Maliev Gest√£o de Consumo',
  'Maliev Gest√£o de Consumo',
  '40.592.092/0001-60',
  'A definir',
  'vinicius.brandao@gmail.com',
  '11966050966',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FRANZEN DE LIMA ALUGUEL DE VEICULOS LTDA',
  'FRANZEN DE LIMA ALUGUEL DE VEICULOS LTDA',
  '60.900.645/0001-02',
  'A definir',
  'nemprado@gmail.com',
  '31991036431',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GUARARAPES LOCADORA LTDA',
  'GUARARAPES LOCADORA LTDA',
  '61.340.737/0001-48',
  'PORTO ALEGRE, RS. Bairro S√ÉO GERALDO, rua Av. Pres. Franklin Roosevelt, N¬∫ 1579',
  'rafaelcosme_@hotmail.com',
  '81992958107',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RP INTERMEDIACOES E LOCACOES LTDA',
  'RP INTERMEDIACOES E LOCACOES LTDA',
  '57.821.219/0001-79',
  'A definir',
  'gustavoparo@hotmail.com',
  '11993424618',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAK LTDA',
  'LOCAK LTDA',
  '57.792.774/0001-10',
  'A definir',
  'locakmail@gmail.com',
  '91981452299',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AMOR E FE LTDA',
  'AMOR E FE LTDA',
  '62.633.146/0001-21',
  'SALVADOR, BA. Bairro Boca do Rio , rua Av. Mte. Manoel, N¬∫ 149',
  'amor_e_fe@outlook.com.br',
  '71991226541',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JA. LOCACAOES DIVERSAS LTD',
  'JA. LOCACAOES DIVERSAS LTD',
  '57.884.529/0001-32',
  'A definir',
  'jairagnes@yahoo.com.br',
  '61996580589',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Claco loca√ß√µes',
  'Claco loca√ß√µes',
  '59.066.377/0001-96',
  'A definir',
  'clacolocacoes@gmail.com',
  '85989220948',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOBILIZA MULTILOCADORA LTDA',
  'MOBILIZA MULTILOCADORA LTDA',
  '61.839.432/0001-85',
  'BRAGAN√áA PAULISTA, SP. Bairro CENTRO, rua AV ANTONIO PIRES PIMENTEL, N¬∫ 865',
  'yamadacarlos2005@gmail.com',
  '1899623384',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MCR LOCACAO DE MOTOS LTDA',
  'MCR LOCACAO DE MOTOS LTDA',
  '59.877.339/0001-13',
  'A definir',
  'luisfelipefenomeno07@gmail.com',
  '19983309889',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'NR LOCADORA DE VEICULOS E EQUIPAMENTOS LTDA',
  'NR LOCADORA DE VEICULOS E EQUIPAMENTOS LTDA',
  '28.007.901/0001-24',
  'A definir',
  'comercial@solutionlocadora.com',
  '38999053787',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LMA LOCACOES LTDA',
  'LMA LOCACOES LTDA',
  '61.861.254/0001-99',
  'FLORIAN√ìPOLIS, SC. Bairro COLONINHA, rua RUA WALDEMAR OURIQUES, N¬∫ 549',
  'lmaloc.floripa@gmail.com',
  '67999069211',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VESPA SOLUCOES EM MOBILIDADE LTDA',
  'VESPA SOLUCOES EM MOBILIDADE LTDA',
  '59.926.785/0001-70',
  'A definir',
  'vitorpryzbeuka@gmail.com',
  '41998009646',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOC2GO LTDA',
  'LOC2GO LTDA',
  '61.509.875/0001-08',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua R ANNE FRANK, N¬∫ 3687',
  'leandrodalboncardoso123@gmail.com',
  '11966359007',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AE LOCACOES LTDA',
  'AE LOCACOES LTDA',
  '56.161.925/0001-79',
  'A definir',
  'ariana.odonto@hotmail.com',
  '7186675503',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCABEM RECIFE LTDA',
  'LOCABEM RECIFE LTDA',
  '61.358.850/0001-50',
  'A definir',
  'locabem.recife@gmail.com',
  '81991927883',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCMOTO MIZUMA LTDA',
  'LOCMOTO MIZUMA LTDA',
  '57.826.713/0001-26',
  'A definir',
  'locmotomizuma@gmail.com',
  '1197294323',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'B LOCACAO DE VEICULOS LTDA',
  'B LOCACAO DE VEICULOS LTDA',
  '63.262.730/0001-80',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AV MIGUEL SUTIL, N¬∫ 11990',
  'blocacaoveiculos@gmail.com',
  '17991322126',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SMX LOCADORA E TRANSPORTE LTDA',
  'SMX LOCADORA E TRANSPORTE LTDA',
  '63.122.572/0001-63',
  'A definir',
  'slxavier@uai.com.br',
  '31992087628',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TJS LOCACAO DE MOTOS LTDA',
  'TJS LOCACAO DE MOTOS LTDA',
  '63.002.409/0001-67',
  'A definir',
  'tjslocagora@gmail.com',
  '11981826765',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CERRADO MOTOS LTDA',
  'CERRADO MOTOS LTDA',
  '62.335.977/0001-17',
  'A definir',
  'cerradomotos.go@gmail.com',
  '11982032049',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JVM EMPREENDIMENTOS LTDA',
  'JVM EMPREENDIMENTOS LTDA',
  '62.499.286/0001-59',
  'Bairro BRO JARDIM AMERICA, rua AVENIDA T9, N¬∫ 2840',
  'inaciomelo1975@gmail.com',
  '63981101234',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BRUTHA LOCADORA',
  'BRUTHA LOCADORA',
  '56.193.935/0001-96',
  'A definir',
  'locadorabrutha@gmail.com',
  '11998850159',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOC.MUTAV LTDA',
  'LOC.MUTAV LTDA',
  '62.324.247/0001-10',
  'A definir',
  'loc.mutav@gmail.com',
  '34992776114',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'TURCATO ALUGUEL DE MOTOS LTDA',
  'TURCATO ALUGUEL DE MOTOS LTDA',
  '59.075.208/0001-12',
  'A definir',
  'adm@topfiber.com.br',
  '11992111807',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MM LOCADORA LTDA',
  'MM LOCADORA LTDA',
  '60.995.329/0001-61',
  'A definir',
  'bruno.marchesano@gmail.com',
  '11983810264',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JRLOC LOCADORA LTDA',
  'JRLOC LOCADORA LTDA',
  '62.273.302/0001-90',
  'A definir',
  'jrloclocadora@gmail.com',
  '11993483632',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA LOCADORA DE VEICULOS SA.',
  'LOCAGORA LOCADORA DE VEICULOS SA.',
  '48.449.181/0002-45',
  'A definir',
  'FINANCEIRO+48449181@LOCAGORAVEICULOS.COM.BR',
  '3191099716',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EXSOLU LTDA',
  'EXSOLU LTDA',
  '61.321.029/0001-60',
  'PORTO ALEGRE, RS. Bairro S√ÉO GERALDO, rua AV PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'evanirsoraggi1@gmail.com',
  '37998337416',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VL LOCADORA DE VEICULOS LTDA',
  'VL LOCADORA DE VEICULOS LTDA',
  '58.195.022/0001-34',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA , rua BARATA RIBEIRO , N¬∫ 236',
  'plandados+58195022@plandados.com',
  '31985069425',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'M. T. LOCACAO DE MOTOS LTDA',
  'M. T. LOCACAO DE MOTOS LTDA',
  '59.525.144/0001-04',
  'RIO DE JANEIRO, RJ. Bairro Copacabana , rua barata ribeiro , N¬∫ 236',
  'rodrigo_trefeles@yahoo.com.br',
  '41991620235',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GALUMA MOBILIDADE E SERVICOS LTDA',
  'GALUMA MOBILIDADE E SERVICOS LTDA',
  '62.996.042/0001-81',
  'A definir',
  'galumarent@gmail.com',
  '11999999999',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DRIVEUP  LOCADORA DE VEICULOS LTDA',
  'DRIVEUP  LOCADORA DE VEICULOS LTDA',
  '61.917.863/0001-12',
  'FLORIAN√ìPOLIS, SC. Bairro CAPOEIRAS, rua R WALDEMAR OURIQUES, N¬∫ 549',
  'paulolocagora@gmail.com',
  '51996979273',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RLEITE VEICULOS LTDA',
  'RLEITE VEICULOS LTDA',
  '57.413.230/0001-08',
  'A definir',
  'rleiteveiculos@gmail.com',
  '11982274006',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'A2LOC AUTO RENT LTDA',
  'A2LOC AUTO RENT LTDA',
  '61.779.816/0001-50',
  'A definir',
  'ardevol.as@gmail.com',
  '1197566036',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LGUIMARAES LTDA',
  'LGUIMARAES LTDA',
  '61.438.910/0001-45',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua R ANNE FRANK, N¬∫ 3687',
  'guimaraesliselene@gmail.com',
  '49999224211',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RBDC LOCACAO LTDA',
  'RBDC LOCACAO LTDA',
  '62.919.581/0001-17',
  'JO√ÉO PESSOA, PB. Bairro ESTADOS, rua AV PRESIDENTE EPIT√ÅCIO PESSOA, N¬∫ 1251',
  'robsonbzcosta@hotmail.com',
  '85985233224',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'IMPERIUM MOTORS LOCACAO DE MOTOCICLETAS LTDA',
  'IMPERIUM MOTORS LOCACAO DE MOTOCICLETAS LTDA',
  '61.367.357/0001-05',
  'A definir',
  '19971160888',
  '8115802808',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FVE LOCACOES E SERVICOS LTDA',
  'FVE LOCACOES E SERVICOS LTDA',
  '58.122.712/0001-63',
  'SALVADOR, BA. Bairro BOCA DO RIO, rua ua AV MESTRE MANOEL,, N¬∫ N¬∫ 149',
  'fabio-wo@hotmail.com',
  '71997379191',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LAS LOCACOES E COM DE VEICULOS E MOTOS LTDA',
  'LAS LOCACOES E COM DE VEICULOS E MOTOS LTDA',
  '58.724.100/0001-40',
  'R. Barata Ribeiro, 236 - Copacabana',
  'viniciusroque@locagorarj.com.br',
  '21971137839',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MLEAL LOCACAO DE VEICULOS LTDA',
  'MLEAL LOCACAO DE VEICULOS LTDA',
  '58.085.544/0001-83',
  'RIO DE JANEIRO, RJ. Bairro COPACABA, rua BARATA RIBEIRO, N¬∫ 236',
  'masole10@gmail.com',
  '21987420002',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'AE LOCACOES LTDA',
  'AE LOCACOES LTDA',
  '57.373.830/0001-81',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua BARATA RIBEIRO, N¬∫ 236',
  'anita.dantas@gmail.com',
  '61991369292',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'VIANA LOCACOES LTDA',
  'VIANA LOCACOES LTDA',
  '61.607.085/0001-65',
  'A definir',
  'anav.locagora@gmail.com',
  '3199558846',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCADORA FRANQUIA LTD',
  'LOCADORA FRANQUIA LTD',
  '58.387.268/0001-08',
  'A definir',
  'silashenrique@yahoo.com.br',
  '11957163213',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTAS RENT LTDA',
  'MOTAS RENT LTDA',
  '57.894.901/0001-91',
  'A definir',
  'hallefcdo@gmail.com',
  '62992297579',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOC GUALTER LTDA',
  'LOC GUALTER LTDA',
  '61.187.703/0001-65',
  'A definir',
  'danielgualter@gmail.com',
  '8581110555',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Garden Loca√ß√µes(Sede) SP',
  'Garden Loca√ß√µes(Sede) SP',
  '49.609.277/0001-05',
  'PAULO DE FARIA, SP. Bairro Canind√©, rua Avenida Cruzeiro do Sul , N¬∫ 130',
  'locagora.osasco@gmail.com',
  '11978123433',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MENDES E CARDOSO MOTOS LTDA',
  'MENDES E CARDOSO MOTOS LTDA',
  '59.511.291/0001-25',
  'TERESINA, PI. Bairro TABULETA, rua AV MIGUEL ROSA, N¬∫ 7500',
  'cacdoso@terra.com.br',
  '11991842065',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Teresina'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SAO LUCAS LOCACAO DE VEICULOS LTDA',
  'SAO LUCAS LOCACAO DE VEICULOS LTDA',
  '63.032.004/0001-71',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AV MIGUEL SUTIL, N¬∫ 11990',
  'adm@urologica.med.br',
  '67992550795',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'PVJ LOCA√á√ÉO E COM√âRCIO DE MOTOS LTDA',
  'PVJ LOCA√á√ÉO E COM√âRCIO DE MOTOS LTDA',
  '57.772.473/0001-24',
  'A definir',
  'helio_valente@icloud.com',
  '11953299059',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCACAO G N SIQUEIRA LTDA',
  'LOCACAO G N SIQUEIRA LTDA',
  '62.857.920/0001-88',
  'CAMPINAS, SP. Bairro GUANABARA, rua AV BRASIL, N¬∫ 807',
  'locgnsiqueira@gmail.com',
  '31995573490',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CJL PARTICIPACOES LTDA',
  'CJL PARTICIPACOES LTDA',
  '61.915.933/0001-01',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua RUA ANNE FRANK, N¬∫ 3687',
  'cjlparticipacoes1@gmail.com',
  '47991755121',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ENCONTRE SOLUCOES EM LOCACAO LTDA',
  'ENCONTRE SOLUCOES EM LOCACAO LTDA',
  '59.465.184/0001-08',
  'A definir',
  'mardonesalimentos@gmail.com',
  '11965380958',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LORA LOC LTDA',
  'LORA LOC LTDA',
  '62.139.292/0001-03',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua RUA ANNE FRANK, N¬∫ 3687',
  'dslora1@gmail.com',
  '27988319033',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ALIANCA VS NEGOCIOS LTDA',
  'ALIANCA VS NEGOCIOS LTDA',
  '62.185.217/0001-70',
  'FLORIAN√ìPOLIS, SC. Bairro COLONINHA, rua RUA WALDEMAR OURIQUES, N¬∫ 549',
  'viniciusfervieira@gmail.com',
  '43999057220',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CARLOS ALBERTO PERON RAMOS LOCACAO DE BENS LTDA',
  'CARLOS ALBERTO PERON RAMOS LOCACAO DE BENS LTDA',
  '61.875.312/0001-33',
  'BRAGAN√áA PAULISTA, SP. Bairro CENTRO, rua AV ANTONIO PIRES PIMENTEL, N¬∫ 865',
  'peronramos@gmail.com',
  '1899798196',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ARP LOCACAO DE MOTOS LTDA',
  'ARP LOCACAO DE MOTOS LTDA',
  '62.548.133/0001-54',
  'A definir',
  'arplocamoto@yahoo.com',
  '19996934369',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FERRARELIS COM√âRCIO E LOCA√á√ÉO LTDA',
  'FERRARELIS COM√âRCIO E LOCA√á√ÉO LTDA',
  '54.113.665/0001-30',
  'A definir',
  'ferrarelislocagora@gmail.com',
  '11950308385',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'C&G LOCADORA DE VEICULOS LTDA',
  'C&G LOCADORA DE VEICULOS LTDA',
  '56.039.422/0001-25',
  'A definir',
  'ceglocadora@gmail.com',
  '11993146465',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  '50MTZ MOTOS',
  '50MTZ MOTOS',
  '55.902.685/0001-53',
  'A definir',
  'lourenco50mtz@gmail.com',
  '11991627105',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCNOG LOCACOES LTDA',
  'LOCNOG LOCACOES LTDA',
  '60.645.220/0001-02',
  'SALVADOR, BA. Bairro CAMINHO DAS ARVORES, rua AV TANCREDO NEVES, N¬∫ 1189',
  'locnoglocacoes@gmail.com',
  '71992608008',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CENTRAL LOCACAO LTDA',
  'CENTRAL LOCACAO LTDA',
  '59.012.762/0001-50',
  'A definir',
  'centralocagora@gmail.com',
  '11999032466',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'M&G LOCADORA LTDA',
  'M&G LOCADORA LTDA',
  '58.012.002/0001-80',
  'A definir',
  'delamoreguilherme@gmail.com',
  '31988804922',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'M&M CORRADI LOCACAO LTDA',
  'M&M CORRADI LOCACAO LTDA',
  '62.863.148/0001-07',
  'CAMPINA DO MONTE ALEGRE, SP. Bairro JARDIM BRASIL, rua AV BRASIL, N¬∫ 807',
  'mm.corradi.locacao+62863148@gmail.com',
  '11972844145',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MLEAL LOCACAO DE VEICULOS LTDA',
  'MLEAL LOCACAO DE VEICULOS LTDA',
  '58.085.544/0001-83',
  'R. Barata Ribeiro, 236 - Copacabana',
  'masole10+58085544@gmail.com',
  '21987420002',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Copacabana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LEMAR MOTORS LTDA',
  'LEMAR MOTORS LTDA',
  '60.949.374/0001-80',
  'A definir',
  '11947853885',
  '24780776805',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA 1000 LTDA',
  'LOCAGORA 1000 LTDA',
  '59.020.244/0001-89',
  'SALVADOR, BA. Bairro CAMINHO DAS ARVORES, rua AV TANCREDO NEVES, N¬∫ 1189',
  'prjuniormagrao@gmail.com',
  '75991501633',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Salvador'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCAGORA JOAO PESSOA LTDA',
  'LOCAGORA JOAO PESSOA LTDA',
  '60.105.753/0001-93',
  'JO√ÉO PESSOA, PB. Bairro JAGUARIBE, rua AVENIDA CAPITAO JOSE PESSOA, N¬∫ 379',
  'trabalhecomcesarferreira@gmail.com',
  '31999221484',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master João Pessoa'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RODRIGO ROG√âRIO SPINOSA LTDA',
  'RODRIGO ROG√âRIO SPINOSA LTDA',
  '60.721.240/0001-07',
  'A definir',
  '19982464231',
  '26547723810',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'GONZAGA ALUGUEL E COMERCIO DE MOTOS LTDA',
  'GONZAGA ALUGUEL E COMERCIO DE MOTOS LTDA',
  '58.050.445/0001-66',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua barata ribeiro de moraes , N¬∫ 236',
  'gonzagamotoscopa@gmail.com',
  '21982294121',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FLAMAR LOCACAO DE MOTOS LTDA',
  'FLAMAR LOCACAO DE MOTOS LTDA',
  '62.021.792/0001-38',
  'FLORIAN√ìPOLIS, SC. Bairro CAPOEIRAS, rua R VALDEMAR OURIQUES, N¬∫ 549',
  'flamarsantos@gmail.com',
  '51999356561',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'NOVOS ARES LOCACOES LTDA',
  'NOVOS ARES LOCACOES LTDA',
  '61.276.289/0001-60',
  'A definir',
  'cesarsoares017@gmail.com',
  '21964475238',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'S & S MAIA LOCADORA LTDA',
  'S & S MAIA LOCADORA LTDA',
  '53.943.583/0001-50',
  'S√ÉO LU√çS, MA. Bairro QUINTAS DO CALHAU, rua AV.PRESIDENTE JUSCELINO, N¬∫  519',
  'sheila.maia@ymail.com',
  '9898116026',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master São Luís do Maranhão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ALEX CORDEIRO DIAS LTDA',
  'ALEX CORDEIRO DIAS LTDA',
  '59.157.094/0001-50',
  'A definir',
  'alexmem10000@gmail.com',
  '77991564651',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BEMACA MARTINS LTDA',
  'BEMACA MARTINS LTDA',
  '59.566.146/0001-41',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua BARATA RIBEIRO, N¬∫ 235',
  'epilefrj@yahoo.com.br',
  '2199529607',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'V2T LOCA√á√ÉO',
  'V2T LOCA√á√ÉO',
  '54.508.766/0001-00',
  'A definir',
  'th.leonardoandrade@gmail.com',
  '11993851682',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTOGO LOCADORA LTDA',
  'MOTOGO LOCADORA LTDA',
  '57.930.988/0001-05',
  'RIO DE JANEIRO, RJ. Bairro Copacabana, rua Barata Ribeiro, N¬∫ 236',
  'ra.rodenbeckconstrutora@gmail.com',
  '13997513115',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ALUGUEL DE MOTOS LAERCIO LTDA',
  'ALUGUEL DE MOTOS LAERCIO LTDA',
  '56.479.943/0001-01',
  'A definir',
  'batataterapiaa@gmail.com',
  '11947056016',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'L.E.D LOCADORA DE VEICULOS LTDA',
  'L.E.D LOCADORA DE VEICULOS LTDA',
  '60.230.362/0001-09',
  'A definir',
  'leandro.evangelista.dias@gmail.com',
  '11997201025',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Bragan√ßa Brasil partners Ltda',
  'Bragan√ßa Brasil partners Ltda',
  '63.485.931/0001-47',
  'Av. Brasil 807 - jd guanabara campinas sp',
  'bragancabrasil.locagora@gmail.com',
  '11942227674',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ALDEIA LOCADORA - S√£o Paulo Sede',
  'ALDEIA LOCADORA - S√£o Paulo Sede',
  '54.009.371/0001-63',
  'PAULO DE FARIA, SP. Bairro TATUAP√â, rua NOVA JERUS√ÅLEM , N¬∫ 807',
  'aldeia.locadora@gmail.com',
  '11996451310',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FRANQUIA FILLIPE FELIX JOINVILLE  ( ANTIGA FRANQUIA - M FAZOLIN COMERCIO E LOCACAO DE MOTOS LTDA )',
  'FRANQUIA FILLIPE FELIX JOINVILLE  ( ANTIGA FRANQUIA - M FAZOLIN COMERCIO E LOCACAO DE MOTOS LTDA )',
  '60.799.463/0001-97',
  'A definir',
  '31991373076',
  '456657967',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Locabras Locacoes',
  'Locabras Locacoes',
  '58.237.897/0001-51',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua Rua Barata Ribeiro , N¬∫ 236',
  'locabraslocabras@gmail.com',
  '15991769499',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOC81 LTDA',
  'LOC81 LTDA',
  '60.742.701/0001-28',
  'A definir',
  'pvt_thiago@hotmail.com',
  '11981213430',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FSR LOCACOES DE VEICULOS LTDA',
  'FSR LOCACOES DE VEICULOS LTDA',
  '62.309.184/0001-23',
  'A definir',
  'fsrocha18@gmail.com',
  '11966616265',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Goiânia'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOC41 LTDA',
  'LOC41 LTDA',
  '62.293.849/0001-58',
  'CURITIBA, PR. Bairro BOQUEIR√ÉO, rua RUA ANNE FRANK, N¬∫ 3687',
  'contato.loc41@gmail.com',
  '41999338146',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Curitiba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DALLA MOTORS LOCACAO E VENDAS LTDA',
  'DALLA MOTORS LOCACAO E VENDAS LTDA',
  '54.347.761/0001-43',
  'A definir',
  'dallamotors@yahoo.com',
  '11997196723',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RR LOCACOES, VENDAS E MOBILIDADE URBANA',
  'RR LOCACOES, VENDAS E MOBILIDADE URBANA',
  '57.904.399/0001-52',
  'S√ÉO PAULO, SP. Bairro Lim√£o , rua Av. Prof. Celestino Bourroul, N¬∫ 581',
  'locagoramotosp@gmail.com',
  '11979965151',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JDF LOCADORA E COMERCIO DE MOTOS LTDA',
  'JDF LOCADORA E COMERCIO DE MOTOS LTDA',
  '62.677.339/0001-84',
  'SOROCABA, SP. Bairro Jardim Faculdade, rua Rua Antonio de Andrade, N¬∫ 276',
  'jose.delio@medpro.com.br',
  '11953620002',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Sorocaba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JL LOCADORA DE VEICULOS LTDA',
  'JL LOCADORA DE VEICULOS LTDA',
  '62.538.469/0001-36',
  'CAMPINAS, SP. Bairro JARDIM CHAPADAO, rua AVENIDA BRASIL, N¬∫ 807',
  'junohlee@gmail.com',
  '11993970603',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOQUETO LOCA√á√ÉO E COMERCIO LTDA',
  'LOQUETO LOCA√á√ÉO E COMERCIO LTDA',
  '60.959.999/0001-22',
  'A definir',
  '31991235473',
  '4349888632',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'ROBERTO SILVA DE OLIVEIRA (BELO HORIZONTE - MG)',
  'ROBERTO SILVA DE OLIVEIRA (BELO HORIZONTE - MG)',
  '48.449.181/0001-64',
  'BELO HORIZONTE, MG. Bairro Flolresta, rua Rua Marechal Deodoro, N¬∫ 293',
  'palestracoachigleagl+48449181@gmail.com',
  '11971787828',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Belo Horizonte'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LVM LOCACAO DE BENS LTDA',
  'LVM LOCACAO DE BENS LTDA',
  '57.373.209/0001-18',
  'A definir',
  'mvaautomoveis1+57373209@gmail.com',
  '65984041818',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FASOM LTDA',
  'FASOM LTDA',
  '62.861.584/0001-47',
  'AV. BRASIL, 807, JD GUANABARA CAMPINAS SP',
  'choaibmotors@gmail.com',
  '1199795174',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'DLUCA LOCACAO DE MOTOS LTDA',
  'DLUCA LOCACAO DE MOTOS LTDA',
  '61.919.297/0001-88',
  'BRAGAN√áA PAULISTA, SP. Bairro CENTRO, rua AVENIDA ANTONIO PIRES PIMENTEL, N¬∫ 865',
  'Dluca.locacao@gmail.com',
  '11980464641',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CZAR MOTOS LTDA',
  'CZAR MOTOS LTDA',
  '59.613.734/0001-99',
  'A definir',
  'cesarfsa@yahoo.com.br',
  '6191674910',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MAGDA MENDES CONCEICAO LOCADORA LTDA',
  'MAGDA MENDES CONCEICAO LOCADORA LTDA',
  '61.228.435/0001-82',
  'A definir',
  '11950272210',
  '26860086874',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Tatuapé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'W.R.C LOCADORA LTDA',
  'W.R.C LOCADORA LTDA',
  '61.795.256/0001-27',
  'BRAGAN√áA PAULISTA, SP. Bairro CENTRO, rua AV ANTONIO PIRES PIMENTEL, N¬∫ 865',
  'wanderleycalefi@mail.com',
  '1997162809',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Bragança Paulista'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RANDY LOCACOES DE VEICULOS LTDA',
  'RANDY LOCACOES DE VEICULOS LTDA',
  '62.943.423/0001-00',
  'CAMPINAS, SP. Bairro JARDIM BRASIL, rua AVENIDA BRASIL, N¬∫ 807',
  'randsan61@gmail.com',
  '11976285992',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RMC LOCADORA',
  'RMC LOCADORA',
  '60.831.878/0001-09',
  'A definir',
  '4184090684',
  '4227033977',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Joinville'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CAIO RICHARD VENDA E LOCACAO LTDA',
  'CAIO RICHARD VENDA E LOCACAO LTDA',
  '57.336.149/0001-63',
  'A definir',
  'caioalphaville@gmail.com',
  '11947255775',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Barueri'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MDG - LOCACAO DE VEICULOS E MOTOS LTDA',
  'MDG - LOCACAO DE VEICULOS E MOTOS LTDA',
  '54.783.703/0001-62',
  'A definir',
  'mariadasgracasanastaciocosta@gmail.com',
  '11981454887',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'YAH LOCADORA LTDA',
  'YAH LOCADORA LTDA',
  '60.998.593/0001-59',
  'A definir',
  'ederaldovald@gmail.com',
  '11950444050',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BRUCAN LOCACAO DE MOTOS LTDA',
  'BRUCAN LOCACAO DE MOTOS LTDA',
  '61.198.418/0001-40',
  'A definir',
  'claudiabrunelo@hotmail.com',
  '11981343406',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Ribeirão Preto'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LAI LOCADORA LTDA',
  'LAI LOCADORA LTDA',
  '62.880.987/0001-33',
  'CAMPINAS, SP. Bairro JARDIM BRASIL, rua AVENIDA BRASIL, N¬∫ 807',
  'ilson.desanoski@gmail.com',
  '41991458222',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Campinas'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'BELLA GIRASSOL LTDA',
  'BELLA GIRASSOL LTDA',
  '61.873.548/0001-30',
  'FLORIAN√ìPOLIS, SC. Bairro CAPOEIRAS, rua RUA WALDEMAR OURIQUES K49501, N¬∫ 549',
  'samuelmartinsdesouza79@gmail.com',
  '21992531378',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Florianópolis'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'EXCELENTE LOCACOES LTDA - COPACABANA',
  'EXCELENTE LOCACOES LTDA - COPACABANA',
  '57.454.186/0001-76',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua R BARATA RIBEIRO, N¬∫ 236',
  'excelente.locacoes+57454186@hotmail.com',
  '19971520808',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FBF LOCACOES E SERVICOS LTDA',
  'FBF LOCACOES E SERVICOS LTDA',
  '60.074.308/0001-03',
  'A definir',
  'fabiowo+60074308@me.com',
  '71997379191',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Feira de Santana'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MONTEIRO LOCACOES LTDA',
  'MONTEIRO LOCACOES LTDA',
  '61.807.441/0001-94',
  'A definir',
  'luizmonteiroy@hotmail.com',
  '3399990069',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Fortaleza'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'FT RECIFE LOCACOES LTDA',
  'FT RECIFE LOCACOES LTDA',
  '61.079.435/0001-68',
  'A definir',
  'tonimartinsdasilva@hotmail.com',
  '51995772766',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Recife'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Nimagi Servi√ßos Ltda',
  'Nimagi Servi√ßos Ltda',
  '57.790.514/0001-05',
  'S√ÉO PAULO, SP. Bairro Lim√£o, rua Ribeiro de morais, N¬∫ 211',
  'marciorios100@gmail.com',
  '11995082636',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MGT LOCACAO LTDA',
  'MGT LOCACAO LTDA',
  '57.513.751/0001-29',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua R BARATA RIBEIRO , N¬∫ 236',
  'alvescunhapqd+57513751@gmail.com',
  '62999891201',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MOTO FLEX LOCACOES LTDA',
  'MOTO FLEX LOCACOES LTDA',
  '58.421.669/0001-37',
  'A definir',
  'michel@tfbh.com.br',
  '3184829330',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'Raphael L Ve√≠culos',
  'Raphael L Ve√≠culos',
  '59.501.014/0001-31',
  'RIO DE JANEIRO, RJ. Bairro COPACABANA, rua R Barata Ribeiro, N¬∫ 236',
  'raphaeljsantunes+59501014@gmail.com',
  '2499208057',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'MG RENTAL MOTOS',
  'MG RENTAL MOTOS',
  '56.993.324/0001-22',
  'A definir',
  'mgrentalmotos+56993324@gmail.com',
  '31999490110',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Freguesia do Ó'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'OLIVEIRA LOCAGORA LTDA',
  'OLIVEIRA LOCAGORA LTDA',
  '62.677.954/0001-90',
  'MANAUS, AM. Bairro S√ÉO FRANCISCO, rua SOBRINHO MARANH√ÉO, N¬∫ 310',
  'oliveiralocagora@gmail.com',
  '6181642024',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Manaus'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SOROCABA - RODLOC LOCACAO DE VEICULOS LTDA',
  'SOROCABA - RODLOC LOCACAO DE VEICULOS LTDA',
  '58.214.311/0001-33',
  'SOROCABA, SP. Bairro Jardim Faculdade, rua Rua Ant√¥nio de Andrade, N¬∫ 276',
  'rodlocadora@outlook.com',
  '31988880987',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Sorocaba'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'JRL SIQUEIRA LOCACOES LTDA',
  'JRL SIQUEIRA LOCACOES LTDA',
  '59.926.338/0001-11',
  'A definir',
  'jrlsiqueira@outlook.com',
  '11960307025',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Brasília'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RODA LIVRE LOCACOES AUTOMOTIVAS LTDA',
  'RODA LIVRE LOCACOES AUTOMOTIVAS LTDA',
  '61.751.630/0001-92',
  'PORTO ALEGRE, RS. Bairro SAO GERALDO, rua AV PRESIDENTE FRANKLIN ROOSEVELT, N¬∫ 1579',
  'feitosadanubia961@gmail.com',
  '66999061317',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Porto Alegre'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'SPEED TIGER LTDA',
  'SPEED TIGER LTDA',
  '61.270.185/0001-49',
  'RIO DE JANEIRO, RJ. Bairro Barra da Tijuca, rua RUA LUIS SERGIO PERSON, N¬∫ 127',
  'speedtiger.adm@gmail.com',
  '21998045311',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Rio de Janeiro'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCARAPIDO MOTOS LTDA',
  'LOCARAPIDO MOTOS LTDA',
  '57.879.107/0001-79',
  'A definir',
  'nilton_c_ferreira@yahoo.com.br',
  '31995120039',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Floramar'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'RENTNOW LOCACAO DE VEICULOS LTDA',
  'RENTNOW LOCACAO DE VEICULOS LTDA',
  '57.830.089/0001-30',
  'A definir',
  'jr2001cabral@gmail.com',
  '11952666351',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Limão'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CONFIANCE LOCA',
  'CONFIANCE LOCA',
  '54.241.721/0001-12',
  'A definir',
  'emmanueltaltasse@outlook.com',
  '19971520808',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Canindé'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'QUASAR LOCACAO LTDA',
  'QUASAR LOCACAO LTDA',
  '61.283.036/0001-14',
  'A definir',
  '19991416674',
  '76557936034',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Maceió'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'CAEDE LOCACAO LTDA',
  'CAEDE LOCACAO LTDA',
  '62.821.253/0001-83',
  'MANAUS, AM. Bairro SAO FRANCISCO, rua R SOBRINHO MARANHAO, N¬∫ 310',
  'ca_luciana@hotmail.com',
  '11942403969',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Manaus'
ON CONFLICT (cnpj) DO NOTHING;

INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  'LOCALL MOTOS LTDA',
  'LOCALL MOTOS LTDA',
  '62.920.768/0001-30',
  'CUIAB√Å, MT. Bairro CIDADE VERDE, rua AVENIDA MIGUEL SUTIL, N¬∫ 11990',
  'casserg@hotmail.com',
  '17981507888',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = 'Master Cuiabá'
ON CONFLICT (cnpj) DO NOTHING;


-- =====================================================
-- VERIFICATION
-- =====================================================
SELECT 'Masters created:' as info, COUNT(*) as count FROM public.master_regionais;
SELECT 'Franquias created:' as info, COUNT(*) as count FROM public.franquias;
