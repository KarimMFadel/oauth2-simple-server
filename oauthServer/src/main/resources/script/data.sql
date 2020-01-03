INSERT INTO oauth_client_details (client_id, client_secret, scope, authorized_grant_types, access_token_validity, additional_information) VALUES ('account-service', 'webpass', 'read', 'authorization_code,password,refresh_token,implicit', 900, '{}');
INSERT INTO oauth_client_details (client_id, client_secret, scope, authorized_grant_types, access_token_validity, additional_information) VALUES ('customer-service', 'webpass', 'read', 'authorization_code,password,refresh_token,implicit', 900, '{}');
INSERT INTO oauth_client_details (client_id, client_secret, scope, authorized_grant_types, access_token_validity, additional_information) VALUES ('customer-service-write', 'webpass', 'write', 'authorization_code,password,refresh_token,implicit', 900, '{}');
INSERT INTO oauth_client_details (client_id, client_secret, scope, authorized_grant_types, access_token_validity, additional_information) VALUES ('web', 'webpass', 'READ,write', 'authorization_code,password,refresh_token,implicit', 900, '{}');