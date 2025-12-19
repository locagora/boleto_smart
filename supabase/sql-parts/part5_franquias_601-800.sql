-- Franquias 601 a 800
-- Parte 5 de 6

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



-- Verificar franquias criadas até agora
SELECT 'Franquias criadas:' as info, COUNT(*) as total FROM public.franquias;
