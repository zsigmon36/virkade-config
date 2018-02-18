apt-get install postgresql-9.6;

su root -p admin
su postgres -p sigbus36
initdb -D /opt/app/virkade/postgresdb/data
CREATE USER virkade WITH PASSWORD 'Reid.Zac36';
alter role virkade with createDB
alter role virkade with login
su virkade -p virkade
CREATE DATABASE virkadecms;