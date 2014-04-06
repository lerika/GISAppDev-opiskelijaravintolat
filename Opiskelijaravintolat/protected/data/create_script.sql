-- Table: ravintolat

-- DROP TABLE ravintolat;

-- Jos et ole vielä tehnyt:
-- CREATE EXTENSION postgis;

CREATE TABLE ravintolat
(
  id serial NOT NULL,
  nimi character varying(255) NOT NULL,
  osoite character varying(255) NOT NULL,
  kunta character varying(255) NOT NULL,
  geometria geometry(Point,4326),
  webosoite character varying(255),
  rss numeric(1,0) NOT NULL,
  CONSTRAINT ravintolat_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);

-- Table: "Ehdotukset"

-- DROP TABLE "Ehdotukset";

CREATE TABLE "Ehdotukset"
(
  muutos_id integer NOT NULL,
  muutos_nimi character varying(50),
  muutos_osoite character varying(50),
  muutos_kunta character varying(50),
  muutos_www character varying(255),
  muutos_status integer
)
WITH (
  OIDS=FALSE
);

-- Index: ravintolat_gix

-- DROP INDEX ravintolat_gix;

CREATE INDEX ravintolat_gix
  ON ravintolat
  USING gist
  (geometria);

