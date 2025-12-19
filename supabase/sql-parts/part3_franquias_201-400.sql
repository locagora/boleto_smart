-- Franquias 201 a 400
-- Parte 3 de 6

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



-- Verificar franquias criadas até agora
SELECT 'Franquias criadas:' as info, COUNT(*) as total FROM public.franquias;
