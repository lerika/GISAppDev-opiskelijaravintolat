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