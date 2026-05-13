
-- me conecto con la BD de pamplona, que es donde quiero crear el esquema de keycloak
\c pamplona
-- create schema if not exists keycloak;
CREATE SCHEMA IF NOT EXISTS keycloak AUTHORIZATION admin;