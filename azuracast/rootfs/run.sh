#!/usr/bin/bashio

echo "Started hassio setup"

JSONSOURCE="/data/options.json"
mapfile -t arr < <(jq -r 'keys[]' "${JSONSOURCE}")
for KEY in "${arr[@]}"; do
    if bashio::config.has_value "$KEY"; then
        VALUE=$(bashio::config "$KEY")
        export "$KEY=$VALUE"
    fi
done

export MYSQL_HOST=$(bashio::services "mysql" "host")
export MYSQL_PORT=$(bashio::services "mysql" "port")
export MYSQL_USER=$(bashio::services "mysql" "username")
export MYSQL_PASSWORD=$(bashio::services "mysql" "password")

# mkdir -p /config/mysql
# rm -r /var/lib/mysql
# ln -s /config/mysl /var/lib/

# rm -r /var/azuracast/backups
# mkdir -p /config/backups
# ln -s /config/backups /var/azuracast/

# rm -r /var/azuracast/stations
# mkdir -p /config/stations
# ln -s /config/stations /var/azuracast/

# rm -r /var/azuracast/storage
# mkdir -p /data/storage
# ln -s /data/storage /var/azuracast/

exec /usr/bin/tini -s /usr/local/bin/my_init -- --no-main-command