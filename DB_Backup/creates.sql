CREATE SCHEMA webchat AUTHORIZATION "admin";


CREATE TABLE webchat.webchat (
	id int8 GENERATED ALWAYS AS IDENTITY NOT NULL,
	mensaje varchar NULL,
	idusuario int4 NOT NULL,
	fechaenvio date NULL,
	CONSTRAINT webchat_pk PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE webchat.webchat OWNER TO "admin";
GRANT ALL ON TABLE webchat.webchat TO "admin";



CREATE TABLE public.layers (
	idlayer int GENERATED ALWAYS AS IDENTITY NOT NULL,
	name_layer varchar NOT NULL,
	name_layer_geo varchar NOT NULL,
	visible bool NULL,
	CONSTRAINT layers_pk PRIMARY KEY (idlayer)
);


ALTER TABLE public.layers  OWNER TO "admin";
GRANT ALL ON TABLE public.layers  TO "admin";

