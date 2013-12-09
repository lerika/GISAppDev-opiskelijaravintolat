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

INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (1, 'Dipoli', 'Otakaari 24', 'Espoo', '0101000020E61000005F97E13FDDD438404BE5ED08A7174E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (2, 'Alvari', 'Otakaari 1', 'Espoo', '0101000020E6100000B29DEFA7C6D33840457F68E6C9174E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (3, 'Kvarkki', 'Otakaari 3', 'Espoo', '0101000020E61000007769C36169D4384028999CDA19184E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (4, 'TUAS-talo', 'Otaniementie 17', 'Espoo', '0101000020E61000004AB72572C1D13840349F73B7EB174E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (5, 'Täffä', 'Otakaari 22', 'Espoo', '0101000020E6100000959D7E5017D53840F1BC546CCC174E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (6, 'Laurea', 'Metsänpojankuja 3', 'Espoo', '0101000020E6100000E4D9E55B1FCE38406500A8E2C6174E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (7, 'Puu', 'Tekniikantie 3', 'Espoo', '0101000020E61000001B118C834BD3384015C9570229174E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (8, 'Tietotekniikantalo', 'Konemiehentie 2', 'Espoo', '0101000020E6100000EDF0D7648DD23840E44EE960FD174E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (9, 'Kasper', 'Vuorimiehentie 2', 'Espoo', '0101000020E610000062669FC728D338409B594B0169174E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (10, 'Konetekniikka', 'Otakaari 4', 'Espoo', '0101000020E6100000AE0E80B8ABD33840828DEBDFF5174E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (11, 'Sähkötekniikka', 'Otakaari 5', 'Espoo', '0101000020E6100000E9B7AF03E7D4384040FB912232184E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (12, 'BarLaurea', 'Vanha maantie 9', 'Espoo', '0101000020E6100000D97C5C1B2ACE38408257CB9D991C4E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (13, 'Unicafe Vanha maantie', 'Vanha Maantie 6', 'Espoo', '0101000020E610000012A5BDC117CE3840A3923A014D1C4E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (14, 'Unicafe Ylioppilasaukio', 'Mannerheimintie 3', 'Helsinki', '0101000020E610000054E3A59BC4F038401C7E37DDB2154E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (15, 'Unicafe Porthania', 'Yliopistonkatu 3', 'Helsinki', '0101000020E610000009336DFFCAF238408481E7DEC3154E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (16, 'Unicafe Physicum', 'Gustaf Hällströmin katu 2', 'Helsinki', '0101000020E61000004AB54FC763F63840CFBBB1A0301A4E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (17, 'Unicafe Päärakennus', 'Fabianinkatu 33', 'Helsinki', '0101000020E610000084F1D3B837F33840B1FB8EE1B1154E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (18, 'Rafla', 'Runeberginkatu 14', 'Helsinki', '0101000020E6100000FF3EE3C281EC384024ED461FF3154E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (19, 'HYSn Osakuntabaari', 'Urho Kekkosen katu 4', 'Helsinki', '0101000020E610000082397AFCDEEE3840BD5296218E154E40');
INSERT INTO ravintolat (id, nimi, osoite, kunta, geometria) VALUES (20, 'Ravintola Arabianranta', 'Hämeentie 135', 'Helsinki', '0101000020E6100000A7052FFA0AFA3840213EB0E3BF1A4E40');


--
-- Name: ravintolat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ravintolat_id_seq', 20, true);


--
-- PostgreSQL database dump complete
--

