-- DNS bind9
/etc/bind



--create raid
mdadm --create /dev/md0 --level=raid5 --raid-devices=3 /dev/sda1 /dev/sdb1 /dev/sdc1
mdadm --detail /dev/md0
mdadm --manage /dev/md0 --add /dev/sdc1
mdadm --detail --scan --verbose | tee -a /etc/mdadm/mdadm.conf
mkfs.ext4 /dev/md0

--Disk mounting
lsblk
sudo mount /dev/md0 /opt/app/virkade
sudo /etc/init.d/postgresql restart


apt-get install postgresql-9.6;

su root -p admin
nano /etc/locale.gen (enable en_US.utf8)
locale-gen
nano /etc/postgresql/9.6/main/postgresql.conf (set the encoding)
/etc/init.d/postgresql restart
su postgres -p sigbus36
initdb -D /opt/app/virkade/postgresdb/data
psql
CREATE USER virkade WITH PASSWORD 'Reid.Zac36';
alter role virkade with createDB;
alter role virkade with login;
su virkade -p 'Reid.Zac36'
createdb -E UTF8 --lc-collate='en_US.utf8' --lc-ctype='en_US.utf8' virkadeCms --template template0
psql virkadeCms
create schema virkade;