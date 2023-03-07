CREATE DATABASE myapp;
CREATE DATABASE myauth;
CREATE DATABASE developer;
CREATE ROLE myapp_rw;
CREATE ROLE developer WITH LOGIN ENCRYPTED PASSWORD '1qw2';
GRANT myapp_rw TO developer;
GRANT CONNECT ON DATABASE myapp TO myapp_rw;
GRANT SELECT ON all tables IN schema public TO myapp_rw;
CREATE ROLE myauth_r;
GRANT myauth_r TO developer;
GRANT CONNECT ON DATABASE myauth TO myauth_r;
grant all privileges on database myauth to myauth_r;