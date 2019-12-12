-- Role: "HDR_DB_ACCESS"
-- DROP ROLE "HDR_DB_ACCESS";

CREATE ROLE :userName
WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  ;


-- Database: HDR_GATEWAY_DB

DROP DATABASE :dbName;

CREATE DATABASE :dbName
WITH 
    OWNER = :userName
ENCODING = 'UTF8'
    LC_COLLATE = 'English_United Kingdom.1252'
    LC_CTYPE = 'English_United Kingdom.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;