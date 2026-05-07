
-- create schema if not exists keycloak;

-- crea la base de datos y el esquema keycloak, y se conecta a la DB para crear el schema
CREATE DATABASE pamplona OWNER admin;
\connect pamplona
CREATE SCHEMA IF NOT EXISTS pamplona AUTHORIZATION admin;


-- crea la base de datos y el esquema keycloak, y se conecta a la DB para crear el schema
CREATE DATABASE keycloak OWNER admin;
\connect keycloak
CREATE SCHEMA IF NOT EXISTS keycloak AUTHORIZATION admin;