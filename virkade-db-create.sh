--Disk mounting
lsblk
sudo mount /dev/md0 /opt/app/virkade
sudo /etc/init.d/postgresql restart
sudo nano /etc/fstab
/dev/md0        /opt/app/virkade        /ntfs   defaults        0       0
ctrl o


apt-get install postgresql-9.6;

su root -p admin
nano /etc/locale.gen (enable en_US.utf8)
locale-gen
nano /etc/postgresql/9.6/main/postgresql.conf (set the encoding)
/etc/init.d/postgresql restart
su postgres -p sigbus36
initdb -D /opt/app/virkade/postgresdb/data
CREATE USER virkade WITH PASSWORD 'Reid.Zac36';
alter role virkade with createDB
alter role virkade with login
su virkade -p 'Reid.Zac36'
createdb -E UTF8 --lc-collate='en_US.utf8' --lc-ctype='en_US.utf8' virkadeCms --template template0
psql virkadeCms
create schema virkade;