
drop table if exists CUSTOMER CASCADE;  

CREATE TABLE CUSTOMER (
   ID  BIGSERIAL NOT NULL,
   FIRST_NAME VARCHAR(255),
   SECOND_NAME VARCHAR(255),
   USERNAME VARCHAR(255),
   PRIMARY KEY (ID)
);

ALTER TABLE IF EXISTS CUSTOMER ADD CONSTRAINT USERNAME_UNIQUE UNIQUE (USERNAME);