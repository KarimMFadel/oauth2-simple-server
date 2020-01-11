INSERT INTO oauth_client_details (client_id, client_secret, scope, authorized_grant_types, access_token_validity, additional_information) 
	VALUES ('account-service', '$2y$12$31qDvX37lk7FvQtuiHjou.RJTYiKWNgHmicMS5UgraQjC4ulpQeOC', 'read', 'authorization_code,password,refresh_token,implicit', 900, '{}');
INSERT INTO oauth_client_details (client_id, client_secret, scope, authorized_grant_types, access_token_validity, additional_information) 
	VALUES ('customer-service', '$2y$12$31qDvX37lk7FvQtuiHjou.RJTYiKWNgHmicMS5UgraQjC4ulpQeOC', 'read', 'authorization_code,password,refresh_token,implicit', 900, '{}');
INSERT INTO oauth_client_details (client_id, client_secret, scope, authorized_grant_types, access_token_validity, additional_information) 
	VALUES ('customer-service-write', '$2y$12$31qDvX37lk7FvQtuiHjou.RJTYiKWNgHmicMS5UgraQjC4ulpQeOC', 'write', 'authorization_code,password,refresh_token,implicit', 900, '{}');
INSERT INTO oauth_client_details (client_id, client_secret, scope, authorized_grant_types, access_token_validity, additional_information) 
	VALUES ('web', '$2y$12$31qDvX37lk7FvQtuiHjou.RJTYiKWNgHmicMS5UgraQjC4ulpQeOC', 'READ,write', 'authorization_code,password,refresh_token,implicit', 900, '{}');


/* 
	Users and Authorities data
*/

INSERT INTO AUTHORITY(ID, NAME) VALUES (1, 'CREATE');
INSERT INTO AUTHORITY(ID, NAME) VALUES (2, 'READ');
INSERT INTO AUTHORITY(ID, NAME) VALUES (3, 'UPDATE');
INSERT INTO AUTHORITY(ID, NAME) VALUES (4, 'DELETE');

INSERT INTO USER_(ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED, CREDENTIALS_EXPIRED, ENABLED)
	VALUES (1, 'mohamed', '$2y$12$sb75sPKJ8WrpYgcLvulITeVKJUuqCbRHZ7X8rU6ImyIyZx3JHdnPq', FALSE, FALSE, FALSE, TRUE);

INSERT INTO USER_(ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED, CREDENTIALS_EXPIRED, ENABLED)
	VALUES (2, 'ahmed', '$2y$12$sb75sPKJ8WrpYgcLvulITeVKJUuqCbRHZ7X8rU6ImyIyZx3JHdnPq', FALSE, FALSE, FALSE, TRUE);

INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 1);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 2);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 3);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (2, 1);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (2, 2);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (2, 4);