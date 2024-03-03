#!/usr/bin/bashio

mkdir -p /config/mysql
rm -r /var/lib/mysql
ln -s /config/mysl /var/lib/

rm -r /var/azuracast/backups
mkdir -p /config/backups
ln -s /config/backups /var/azuracast/

rm -r /var/azuracast/stations
mkdir -p /config/stations
ln -s /config/stations /var/azuracast/

rm -r /var/azuracast/storage
mkdir -p /data/storage
ln -s /data/storage /var/azuracast/

/usr/bin/tini /usr/local/bin/my_init --no-main-command