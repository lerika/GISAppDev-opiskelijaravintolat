-- Table: ravintolat

DROP TABLE ravintolat;

-- Jos et ole vielä tehnyt:
-- CREATE EXTENSION postgis;

CREATE TABLE ravintolat
(
  id serial NOT NULL,
  nimi character varying(255) NOT NULL,
  osoite character varying(255) NOT NULL,
  kunta character varying(255) NOT NULL,
  geometria geometry(Point,4326),
  webosoite character varying(255) NOT NULL,
  rss numeric(1,0) NOT NULL,
  CONSTRAINT ravintolat_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
