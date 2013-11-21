-- Table: ravintolat

DROP TABLE ravintolat;

CREATE TABLE ravintolat
(
  id serial primary key,
  nimi character varying(255) NOT NULL,
  xkoord numeric(8,6),
  ykoord numeric(8,6),
  osoite character varying(255) NOT NULL,
  kunta character varying(255) NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE ravintolat
  OWNER TO postgres;
  
INSERT INTO ravintolat(
            nimi, xkoord, ykoord, osoite, kunta)
    VALUES ('Dipoli', 24.831501, 60.184785, 'Otakaari 24', 'Espoo');
		
INSERT INTO ravintolat(
            nimi, xkoord, ykoord, osoite, kunta)
	VALUES ('Alvari', 24.82725, 60.185849, 'Otakaari 1', 'Espoo');	

INSERT INTO ravintolat(
            nimi, xkoord, ykoord, osoite, kunta)
	VALUES ('Kvarkki', 24.829733, 60.188289, 'Otakaari 3', 'Espoo');	
	
INSERT INTO ravintolat(
            nimi, xkoord, ykoord, osoite, kunta)
	VALUES ('TUAS-talo', 24.819358, 60.186881, 'Otaniementie 17', 'Espoo');
	
INSERT INTO ravintolat(
            nimi, xkoord, ykoord, osoite, kunta)
	VALUES ('Täffä', 24.832387, 60.185926, 'Otakaari 22', 'Espoo');

-- copypasteen liittyvista kaytannon syista x- ja y-koordinaattien jarjestyksen vaihto tästä eteenpäin
	
INSERT INTO ravintolat(
            nimi, ykoord, xkoord, osoite, kunta)
	VALUES ('Laurea',60.1857567,24.8051662, 'Metsänpojankuja 3', 'Espoo');
	
INSERT INTO ravintolat(
            nimi, ykoord, xkoord, osoite, kunta)
	VALUES ('Puu',60.1809387,24.8253708,'Tekniikantie 3', 'Espoo');
	
INSERT INTO ravintolat(
            nimi, ykoord, xkoord, osoite, kunta)
	VALUES ('Tietotekniikantalo',60.1874199,24.8224697, 'Konemiehentie 2', 'Espoo');
	
INSERT INTO ravintolat(
            nimi, ykoord, xkoord, osoite, kunta)
	VALUES ('Kasper',60.1828918,24.8248405,'Vuorimiehentie 2', 'Espoo');
	
INSERT INTO ravintolat(
            nimi, ykoord, xkoord, osoite, kunta)
	VALUES ('Konetekniikka',60.187191,24.8268394, 'Otakaari 4', 'Espoo');
	
INSERT INTO ravintolat(
            nimi, ykoord, xkoord, osoite, kunta)
	VALUES ('Sähkötekniikka',60.1890297,24.8316498,'Otakaari 5', 'Espoo');
	
INSERT INTO ravintolat(
            nimi, ykoord, xkoord, osoite, kunta)
	VALUES ('BarLaurea',60.2234383,24.8053303, 'Vanha maantie 9', 'Espoo');
	
INSERT INTO ravintolat(
            nimi, ykoord, xkoord, osoite, kunta)
	VALUES ('Unicafe Vanha maantie',60.2210999,24.8050499, 'Vanha Maantie 6', 'Espoo');
	
INSERT INTO ravintolat(
            nimi, ykoord, xkoord, osoite, kunta)
	VALUES ('Unicafe Ylioppilasaukio',60.1695213,24.9405003, 'Mannerheimintie 3', 'Helsinki');
	
INSERT INTO ravintolat(
            nimi, ykoord, xkoord, osoite, kunta)
	VALUES ('Unicafe Porthania',60.1700401,24.94841, 'Yliopistonkatu 3', 'Helsinki');
	
INSERT INTO ravintolat(
            nimi, ykoord, xkoord, osoite, kunta)
	VALUES ('Unicafe Physicum',60.2046089,24.9624596, 'Gustaf Hällströmin katu 2', 'Helsinki');
	
INSERT INTO ravintolat(
            nimi, ykoord, xkoord, osoite, kunta)
	VALUES ('Unicafe Päärakennus',60.1694908,24.9500694, 'Fabianinkatu 33', 'Helsinki');
	
INSERT INTO ravintolat(
            nimi, ykoord, xkoord, osoite, kunta)
	VALUES ('Rafla',60.1714821,24.9238548, 'Runeberginkatu 14', 'Helsinki');
	
INSERT INTO ravintolat(
            nimi, ykoord, xkoord, osoite, kunta)
	VALUES ('HYSn Osakuntabaari',60.1683998,24.9330902, 'Urho Kekkosen katu 4', 'Helsinki');
	
INSERT INTO ravintolat(
            nimi, ykoord, xkoord, osoite, kunta)
	VALUES ('Ravintola Arabianranta',60.2089806,24.9767303, 'Hämeentie 135', 'Helsinki');