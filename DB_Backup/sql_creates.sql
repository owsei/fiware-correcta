CREATE SCHEMA IF NOT EXISTS pamplona;

CREATE TABLE pamplona.iot_weatherobserved (
    entityId TEXT,
    entityType TEXT,
    fiwareServicePath TEXT,
    recvTime TIMESTAMP,
    dateObserved TIMESTAMP,
    dateObserved_md JSONB,
    relativeHumidity NUMERIC,
    relativeHumidity_md JSONB,
    temperature NUMERIC,
    temperature_md JSONB,
    location JSONB,
    location_md JSONB,
    atmosphericPressure NUMERIC,
    atmosphericPressure_md JSONB
);

CREATE TABLE public.sensores (
    nombre TEXT,
    fecha TIMESTAMP,
    h NUMERIC,
    t NUMERIC
);

CREATE TABLE IF NOT EXISTS urbanmobility_vehicle (
  timeinstant timestamp with time zone,
  license_plate text,
  location geometry,
  -- Common model attributes
  entityid text,
  entitytype text,
  recvtime timestamp with time zone,
  fiwareservicepath text,
  -- PRIMARY KEYS
  CONSTRAINT urbanmobility_vehicle_pkey PRIMARY KEY (timeinstant, entityid)
);


-- Indexes coming from dbIndexes in model spec
CREATE INDEX urbanmobility_vehicle_idx_tm ON urbanmobility_vehicle (timeinstant);