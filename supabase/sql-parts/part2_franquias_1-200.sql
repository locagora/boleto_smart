-- Franquias 1 a 200
-- Parte 2 de 6

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



-- Verificar franquias criadas até agora
SELECT 'Franquias criadas:' as info, COUNT(*) as total FROM public.franquias;
