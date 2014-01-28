--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: ravintolat; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (1, 'Dipoli', 'Otakaari 24', 'Espoo', '0101000020E61000005F97E13FDDD438404BE5ED08A7174E40', 'http://www.sodexo.fi/dipoli');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (2, 'Alvari', 'Otakaari 1', 'Espoo', '0101000020E6100000B29DEFA7C6D33840457F68E6C9174E40', 'http://www.amica.fi/alvari');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (3, 'Kvarkki', 'Otakaari 3', 'Espoo', '0101000020E61000007769C36169D4384028999CDA19184E40', 'http://www.amica.fi/kvarkki');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (4, 'TUAS-talo', 'Otaniementie 17', 'Espoo', '0101000020E61000004AB72572C1D13840349F73B7EB174E40', 'http://www.amica.fi/TUAS');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (5, 'Täffä', 'Otakaari 22', 'Espoo', '0101000020E6100000959D7E5017D53840F1BC546CCC174E40', 'http://www.teknologforeningen.fi/menu.html?lang=fi');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (6, 'Laurea Otaniemi', 'Metsänpojankuja 3', 'Espoo', '0101000020E6100000E4D9E55B1FCE38406500A8E2C6174E40', 'http://www.amica.fi/laureaotaniemi');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (7, 'Puu 2', 'Tekniikantie 3', 'Espoo', '0101000020E61000001B118C834BD3384015C9570229174E40', 'http://www.amica.fi/Puu2');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (8, 'Tietotekniikantalo', 'Konemiehentie 2', 'Espoo', '0101000020E6100000EDF0D7648DD23840E44EE960FD174E40', 'http://www.sodexo.fi/tietotekniikantalo');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (9, 'Kasper', 'Vuorimiehentie 2', 'Espoo', '0101000020E610000062669FC728D338409B594B0169174E40', 'http://www.sodexo.fi/kasper');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (10, 'Konetekniikka', 'Otakaari 4', 'Espoo', '0101000020E6100000AE0E80B8ABD33840828DEBDFF5174E40', 'http://www.sodexo.fi/konetekniikka');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (11, 'Sähkötekniikka', 'Otakaari 5', 'Espoo', '0101000020E6100000E9B7AF03E7D4384040FB912232184E40', 'http://www.sodexo.fi/sahkotekniikka');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (12, 'BarLaurea', 'Vanha maantie 9', 'Espoo', '0101000020E6100000D97C5C1B2ACE38408257CB9D991C4E40', 'http://www.laurea.fi/fi/leppavaara/palvelut/Sivut/BarLaurea.aspx');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (13, 'Unicafe Vanha maantie', 'Vanha Maantie 6', 'Espoo', '0101000020E610000012A5BDC117CE3840A3923A014D1C4E40', 'http://www.hyyravintolat.fi/unicafe/#/Metropolia/Vanha%20Maantie/9/35');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (14, 'Unicafe Ylioppilasaukio', 'Mannerheimintie 3', 'Helsinki', '0101000020E610000054E3A59BC4F038401C7E37DDB2154E40', 'http://www.hyyravintolat.fi/unicafe/#/Keskusta/Ylioppilasaukio/1/8');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (15, 'Unicafe Porthania', 'Yliopistonkatu 3', 'Helsinki', '0101000020E610000009336DFFCAF238408481E7DEC3154E40', 'http://www.hyyravintolat.fi/unicafe/#/Keskusta/Porthania/1/3');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (16, 'Unicafe Physicum', 'Gustaf Hällströmin katu 2', 'Helsinki', '0101000020E61000004AB54FC763F63840CFBBB1A0301A4E40', 'http://www.hyyravintolat.fi/unicafe/#/Kumpula/Physicum/3/12');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (17, 'Unicafe Päärakennus', 'Fabianinkatu 33', 'Helsinki', '0101000020E610000084F1D3B837F33840B1FB8EE1B1154E40', 'http://www.hyyravintolat.fi/unicafe/#/Keskusta/P%C3%A4%C3%A4rakennus/1/4');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (18, 'Rafla', 'Runeberginkatu 14', 'Helsinki', '0101000020E6100000FF3EE3C281EC384024ED461FF3154E40', 'http://www.amica.fi/rafla/');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (19, 'HYSn Osakuntabaari', 'Urho Kekkosen katu 4', 'Helsinki', '0101000020E610000082397AFCDEEE3840BD5296218E154E40', 'http://www.hys.net/opiskelijapalvelut/osakuntabaari');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (20, 'Ravintola Arabianranta', 'Hämeentie 135', 'Helsinki', '0101000020E6100000A7052FFA0AFA3840213EB0E3BF1A4E40', 'http://www.compass-group.fi/ravintolat/Helsinki/ravintola-arabianranta/Lounaslista/');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (21, 'Unicafe Rotunda', 'Unioninkatu 36', 'Helsinki', '0101000020E6100000812C9F4033F338404473F8FFCC154E40', 'http://www.hyyravintolat.fi/unicafe/#/Keskusta/Rotunda/1/5');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (22, 'Unicafe Topelias', 'Unioninkatu 38', 'Helsinki', '0101000020E6100000C80CAF7F32F3384014BF1880FC154E40', 'http://www.hyyravintolat.fi/unicafe/#/Keskusta/Topelias/1/6');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (23, 'Unicafe Metsätalo', 'Fabianinkatu 39', 'Helsinki', '0101000020E61000005F5331DF0BF338404656236019164E40', 'http://www.hyyravintolat.fi/unicafe/#/Keskusta/Mets%C3%A4talo/1/1');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (24, 'Unicafe Valtiotiede', 'Unioninkatu 37', 'Helsinki', '0101000020E61000004615B47F54F3384003E0E9DF3F164E40', 'http://www.hyyravintolat.fi/unicafe/#/Keskusta/Valtiotiede/1/7');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (25, 'Unicafe Olivia', 'Siltavuorenpenger 5', 'Helsinki', '0101000020E6100000D9C57E60D8F33840817B9E3F6D164E40', 'http://www.hyyravintolat.fi/unicafe/#/Keskusta/Olivia/1/2');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (26, 'TeaK', 'Haapaniemenkatu 6', 'Helsinki', '0101000020E6100000DA03ADC090F53840AD7EB61F3A174E40', 'http://www.amica.fi/uniarts_teak');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (27, 'Unicafe Ricola', 'Agricolankatu 1', 'Helsinki', '0101000020E6100000B1B49D00D4F438409BA84A00A3174E40', 'hhttp://www.hyyravintolat.fi/unicafe/#/Metropolia/Agricolankatu%20Ricola/9/27');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (28, 'Alppica', 'Alppikatu 2', 'Helsinki', '0101000020E6100000F68B232070F03840191B5F20AD174E40', 'http://www.amica.fi/Ravintolat/Amica-ravintolat/Ravintolat-kaupungeittain/Helsinki/Helsingin-Diakonissalaitos--Alppica/');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (29, 'Diakonia-Ammattikorkeakoulu', 'Sturenkatu 2', 'Helsinki', '0101000020E6100000315C1D0071F138400000000000184E40', 'http://www.amica.fi/diakonia');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (30, 'Mäkelän koulu', 'Hattulantie 2', 'Helsinki', '0101000020E610000011058E5FD3F43840BCF957A027194E40', 'http://www.sodexo.fi/hbc');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (31, 'Helia-Bistro', 'Ratapihantie 13', 'Helsinki', '0101000020E61000008AF2BB9F09EF384097B3D2FFCD194E40', 'http://www.amica.fi/helia-bistro');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (32, 'Pääraide', 'Rautatieläisenkatu 5', 'Helsinki', '0101000020E610000032EC8BDF6FEF384092054CE0D6194E40', 'http://www.amica.fi/paaraide');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (33, 'Unicafe Sofianlehto', 'Sofianlehdonkatu 5', 'Helsinki', '0101000020E6100000D2318C6088F33840D8875000201A4E40', 'http://www.hyyravintolat.fi/unicafe/#/Metropolia/Sofianlehto/9/34');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (34, 'Unicafe Exactum', 'Gustaf Hällströmin katu 2', 'Helsinki', '0101000020E6100000A3B899C063F638403AFCDA9F301A4E40', 'http://www.hyyravintolat.fi/unicafe/#/Kumpula/Exactum/3/11');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (35, 'Unicafe Chemicum', 'A.I. Virtasen aukio 1', 'Helsinki', '0101000020E6100000E2F8EB5FA3F6384081E5AD5F551A4E40', 'http://www.hyyravintolat.fi/unicafe/#/Kumpula/Chemicum/3/10');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (36, 'Jamipaja', 'Arabiankatu 2', 'Helsinki', '0101000020E61000005D47663F9CF938409B125A208B1A4E40', 'http://www.amica.fi/jamipaja');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (37, 'Unicafe Hämeentie', 'Hämeentie 161', 'Helsinki', '0101000020E61000003CCA77DFE7FA38403EDCC47F701B4E40', 'http://www.hyyravintolat.fi/unicafe/#/Metropolia/H%C3%A4meentie/9/33');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (38, 'Unicafe Onnentie', 'Onnentie 18', 'Helsinki', '0101000020E6100000F45377C0D0F4384082B9CC9F251C4E40', 'http://www.hyyravintolat.fi/unicafe/#/Metropolia/Onnentie/9/30');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (39, 'Unicafe Albertinkatu', 'Albertinkatu 40', 'Helsinki', '0101000020E6100000E07FD01F3FEE38402389B9FF23154E40', 'http://www.hyyravintolat.fi/unicafe/#/Metropolia/Albertinkatu/9/29');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (40, 'Unicafe Biokeskus', 'Viikinkaari 9', 'Helsinki', '0101000020E61000009E8834E0E2033940F73361A0101D4E40', 'http://www.hyyravintolat.fi/unicafe/#/Viikki/Biokeskus/6/18');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (41, 'Unicafe Bulevardi', 'Bulevardi 31', 'Helsinki', '0101000020E6100000428D8C1F74EE38401CF80780E0144E40', 'http://www.hyyravintolat.fi/unicafe/#/Metropolia/Bulevardi/9/28');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (42, 'Unicafe Korona', 'Viikinkaari 11', 'Helsinki', '0101000020E6100000711E4E603A033940B106DE7F1A1D4E40', 'http://www.hyyravintolat.fi/unicafe/#/Viikki/Korona/6/19');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (43, 'Unicafe Leiritie', 'Leiritie 1', 'Vantaa', '0101000020E61000002BEB483F2BD838404B71FA1F05214E40', 'http://www.hyyravintolat.fi/unicafe/#/Metropolia/Leiritie/9/36');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (44, 'Unicafe Meilahti', 'Haartmaninkatu 3', 'Helsinki', '0101000020E6100000233ABA00EAE8384094AA48E06A184E40', 'http://www.hyyravintolat.fi/unicafe/#/Meilahti/Meilahti/4/13');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (45, 'Unicafe Ruskeasuo', 'Kytäsuontie 9', 'Helsinki', '0101000020E6100000402C4080B1E53840882760E05E1A4E40', 'http://www.hyyravintolat.fi/unicafe/#/Ruskeasuo/Ruskeasuo/8/14');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (46, 'Unicafe Soc&Kom', 'Yrjö-Koskisen katu 3', 'Helsinki', '0101000020E610000019181EA0A0F33840ECD918E027164E40', 'http://www.hyyravintolat.fi/unicafe/#/Keskusta/Soc&amp;Kom/1/15');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (47, 'Unicafe Tukholmankatu', 'Tukholmankatu 10', 'Helsinki', '0101000020E61000004BB26900CAE6384074FE37407A184E40', 'http://www.hyyravintolat.fi/unicafe/#/Metropolia/Tukholmankatu/9/31');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (48, 'Unicafe Vanha Viertotie', 'Vanha Viertotie 23', 'Helsinki', '0101000020E61000008AF5FC1F16E23840E407F87F1F1B4E40', 'http://www.hyyravintolat.fi/unicafe/#/Metropolia/Vanha%20Viertotie/9/32');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (49, 'Unicafe Viikuna', 'Agnes Sjöbergin katu 2', 'Helsinki', '0101000020E61000004541953F840539408CDB68006F1D4E40', 'http://www.hyyravintolat.fi/unicafe/#/Viikki/Viikuna/6/21');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (50, 'Arkadia', 'Lapuankatu 2', 'Helsinki', '0101000020E61000002A87BB1F5CEC38404CD8C8BFE0154E40', 'http://www.amica.fi/arkadia');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (51, 'Arcada', 'Jan-Magnus Janssonin aukio 1', 'Helsinki', '0101000020E610000062365C3F58F7384063224A20CA194E40', 'http://www.amica.fi/Ravintolat/Amica-ravintolat/Ravintolat-kaupungeittain/Helsinki/Arcada--Nylands-svenska-yrkeshogskola1/');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (52, 'Biomedicum', 'Haartmaninkatu 8', 'Helsinki', '0101000020E610000018B49080D1E738404AC9BC9F64184E40', 'http://www.hus.fi/hus-tietoa/liikelaitokset-ja-tukipalvelut/ravioli/lounasravintolat/Sivut/Biomedicum.aspx');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (53, 'Hanken', 'Arkadiankatu 22', 'Helsinki', '0101000020E610000032152C1F93EC38408E7AE3FFE9154E40', 'http://www.amica.fi/tahka');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (54, 'Tähkä', 'Koetilantie 7', 'Helsinki', '0101000020E6100000E3885A3FA2043940250516C0941C4E40', 'http://www.amica.fi/tahka');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (55, 'Iho- ja allergiasairaala', 'Meilahdentie 1', 'Helsinki', '0101000020E61000000BF6BAA019E338405803EF3F8D184E40', 'http://www.hus.fi/hus-tietoa/liikelaitokset-ja-tukipalvelut/ravioli/lounasravintolat/Sivut/Iho--ja-allergiasairaala.aspx');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (56, 'Kirurginen sairaala', 'Kasarmikatu 11', 'Helsinki', '0101000020E6100000FD4575DFD6F238408FB81160A2144E40', 'http://www.hus.fi/hus-tietoa/liikelaitokset-ja-tukipalvelut/ravioli/lounasravintolat/Sivut/Kirurginen-sairaala.aspx');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (57, 'Malmica', 'Hietakummuntie 1', 'Helsinki', '0101000020E6100000D04B20802F043940F6245580941F4E40', 'http://www.amica.fi/malmica');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (58, 'Meccala', 'Hämeentie 135', 'Helsinki', '0101000020E6100000248337FF0AFA3840CD3F55E0BF1A4E40', 'http://www.amica.fi/meccala');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (59, 'Meilahden lounasravintola', 'Stenbäckinkatu 9', 'Helsinki', '0101000020E6100000D65D34BFF5E83840634BEA5FED174E40', 'http://www.hus.fi/hus-tietoa/liikelaitokset-ja-tukipalvelut/ravioli/lounasravintolat/Sivut/Meilahden-lounasravintola.aspx');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (60, 'Musiikkitalo', 'Mannerheimintie 13', 'Helsinki', '0101000020E6100000D92C4D00B4EE3840FA3CEBBF73164E40', 'http://www.tapahtumamaailma.fi/musiikkitalon-lounas');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (61, 'Chydenia', 'Runeberginkatu 22', 'Helsinki', '0101000020E610000056CE8360FAEB38403AFCDA9F30164E40', 'http://www.amica.fi/chydenia');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (62, 'Kipsari', 'Hämeentie 135', 'Helsinki', '0101000020E6100000248337FF0AFA3840CD3F55E0BF1A4E40', 'http://kipsari.com/');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (63, 'Ladonlukko', 'Latokartanonkaari 9', 'Helsinki', '0101000020E6100000E2B43BFFD104394056B6B4BF581D4E40', 'http://www.sodexo.fi/ravintolaladonlukko');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (64, 'Cafe da Capo', 'Töölönkatu 28', 'Helsinki', '0101000020E6100000C1A49D3F12ED38405B536A40CE164E40', 'http://www.amica.fi/cafedacapo');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (65, 'R-Talo', 'Pohjoinen Rautatienkatu 9', 'Helsinki', '0101000020E61000000A9D7C1FB3EE38407ABE0B00FA154E40', 'http://www.amica.fi/r-talo');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (66, 'Töölön sairaala', 'Topeliuksenkatu 5', 'Helsinki', '0101000020E6100000EB4669801CEC3840273DC21F34174E40', 'http://www.hus.fi/hus-tietoa/liikelaitokset-ja-tukipalvelut/ravioli/lounasravintolat/Sivut/T%C3%B6%C3%B6l%C3%B6n-sairaala.aspx');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (67, 'Holkki', 'Holkkitie 5', 'Helsinki', '0101000020E6100000D1459E7F160E3940D4FF28A03F1B4E40', 'http://www.hel.fi/hki/Palmia/fi/Catering-palvelut/Ravintolapalvelut/Ravintolat/Ravintola+Holkki');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (68, 'Konservatorio', 'Ruoholahdentori 6', 'Helsinki', '0101000020E61000005AAB2CC02DEA3840A2105C40C3144E40', 'http://www.hel.fi/wps/portal/Palmia/Catering-palvelut/Artikkeli?urile=hki:path:/Palmia/fi/Catering-palvelut/Ravintolapalvelut/Ravintolat/Opiskelijaravintola_Konservatorio2&current=true');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (69, 'Serpens', 'Töölönkatu 37', 'Helsinki', '0101000020E61000003E2075E041EC38400B45BA9F53174E40', 'http://www.hel.fi/hki/Palmia/fi/Catering-palvelut/Ravintolapalvelut/Ravintolat/Ravintola+Serpens');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (70, 'Jorvin sairaala', 'Turuntie 150', 'Espoo', '0101000020E61000005A187D6022B13840F2704C60841C4E40', 'http://www.hus.fi/hus-tietoa/liikelaitokset-ja-tukipalvelut/ravioli/lounasravintolat/Sivut/Jorvi.aspx');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (71, 'Hella Wuolijoki', 'Ratatie 22', 'Vantaa', '0101000020E61000002222EB5F480B3940547BC7DFAC254E40', 'http://www.amica.fi/laurea');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (72, 'Peijaksen sairaala', 'Sairaalakatu 1', 'Vantaa', '0101000020E6100000641CC81FB10E394059445E20522A4E40', 'http://www.hus.fi/hus-tietoa/liikelaitokset-ja-tukipalvelut/ravioli/lounasravintolat/Sivut/Peijaksen-sairaala.aspx');
--INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria, webosoite) VALUES (73, '', '', '', '', '');



--
-- Name: ravintolat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ravintolat_id_seq', 72, true);


--
-- PostgreSQL database dump complete
--

