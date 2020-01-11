drop table if exists oauth_client_details;
create table oauth_client_details (
  client_id VARCHAR(255) PRIMARY KEY,
  resource_ids VARCHAR(255),
  client_secret VARCHAR(255),
  scope VARCHAR(255),
  authorized_grant_types VARCHAR(255),
  web_server_redirect_uri VARCHAR(255),
  authorities VARCHAR(255),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additional_information VARCHAR(4096),
  autoapprove VARCHAR(255)
);
drop table if exists oauth_client_token;
create table oauth_client_token (
  token_id VARCHAR(255),
  token bytea,
  authentication_id VARCHAR(255) PRIMARY KEY,
  user_name VARCHAR(255),
  client_id VARCHAR(255)
);
 
drop table if exists oauth_access_token;
CREATE TABLE oauth_access_token (
  token_id VARCHAR(256) DEFAULT NULL,
  token bytea,
  authentication_id VARCHAR(256) DEFAULT NULL,
  user_name VARCHAR(256) DEFAULT NULL,
  client_id VARCHAR(256) DEFAULT NULL,
  authentication bytea,
  refresh_token VARCHAR(256) DEFAULT NULL
);
 
drop table if exists oauth_refresh_token;
CREATE TABLE oauth_refresh_token (
  token_id VARCHAR(256) DEFAULT NULL,
  token bytea,
  authentication bytea
);
 
drop table if exists oauth_code;
create table oauth_code (
  code VARCHAR(255), authentication bytea
);
drop table if exists oauth_approvals;
create table oauth_approvals (
    userId VARCHAR(255),
    clientId VARCHAR(255),
    scope VARCHAR(255),
    status VARCHAR(10),
    expiresAt TIMESTAMP,
    lastModifiedAt TIMESTAMP
);


/* 
	Users and Authorities tables
*/
/*
ALTER table if exists AUTHORITY DROP CONSTRAINT AUTHORITY_NAME ;  
ALTER table if exists USER_ DROP CONSTRAINT USER_USER_NAME; 
ALTER table if exists USERS_AUTHORITIES DROP CONSTRAINT USERS_AUTHORITIES_AUTHORITY,USERS_AUTHORITIES_USER_; 
*/

drop table if exists AUTHORITY;  
drop table if exists USER_; 
drop table if exists USERS_AUTHORITIES; 

CREATE TABLE AUTHORITY (
   ID  BIGSERIAL NOT NULL,
   NAME VARCHAR(255),
   PRIMARY KEY (ID)
);

CREATE TABLE USER_ (
   ID  BIGSERIAL NOT NULL,
   ACCOUNT_EXPIRED BOOLEAN,
   ACCOUNT_LOCKED BOOLEAN,
   CREDENTIALS_EXPIRED BOOLEAN,
   ENABLED BOOLEAN,
   PASSWORD VARCHAR(255),
   USER_NAME VARCHAR(255),
   PRIMARY KEY (ID)
);

CREATE TABLE USERS_AUTHORITIES (
   USER_ID INT8 NOT NULL,
   AUTHORITY_ID INT8 NOT NULL,
   PRIMARY KEY (USER_ID, AUTHORITY_ID)
);



ALTER TABLE IF EXISTS AUTHORITY ADD CONSTRAINT AUTHORITY_NAME UNIQUE (NAME);
ALTER TABLE IF EXISTS USER_ ADD CONSTRAINT USER_USER_NAME UNIQUE (USER_NAME);
ALTER TABLE IF EXISTS USERS_AUTHORITIES ADD CONSTRAINT USERS_AUTHORITIES_AUTHORITY
  FOREIGN KEY (AUTHORITY_ID) REFERENCES AUTHORITY;

ALTER TABLE IF EXISTS USERS_AUTHORITIES ADD CONSTRAINT USERS_AUTHORITIES_USER_
  FOREIGN KEY (USER_ID) REFERENCES USER_;
