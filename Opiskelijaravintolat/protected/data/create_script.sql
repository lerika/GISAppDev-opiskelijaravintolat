-- Table: ravintolat

DROP TABLE ravintolat;

CREATE TABLE ravintolat
(
  id serial primary key,
  nimi character varying(255) NOT NULL,
  xkoord numeric(8,6),
  ykoord numeric(8,6),
  osoite character varying(255) NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE ravintolat
  OWNER TO postgres;
  
INSERT INTO ravintolat(
            nimi, xkoord, ykoord, osoite)
    VALUES ('Dipoli', 24.831501, 60.184785, 'Otakaari 24');

