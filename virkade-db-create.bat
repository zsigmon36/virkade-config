initdb -D data
pg_ctl -D "data" -l logfile start
createuser --createdb --login --pwprompt virkade
createdb -E UTF8 --owner=virkade --template=template0 virkadeCms
psql virkadeCms

create schema virkade AUTHORIZATION virkade;
