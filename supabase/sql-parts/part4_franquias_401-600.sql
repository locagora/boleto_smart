-- Franquias 401 a 600
-- Parte 4 de 6

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



-- Verificar franquias criadas até agora
SELECT 'Franquias criadas:' as info, COUNT(*) as total FROM public.franquias;
