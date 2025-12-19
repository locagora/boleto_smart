-- Franquias 801 a 948
-- Parte 6 de 6

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

-- Verificar franquias criadas até agora
SELECT 'Franquias criadas:' as info, COUNT(*) as total FROM public.franquias;
