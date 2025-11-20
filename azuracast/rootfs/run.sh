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

# Read user-provided paths from config
STATION_DATA=$(bashio::config 'station_data')
BACKUPS=$(bashio::config 'backups')
DB_DATA=$(bashio::config 'db_data')
WWW_UPLOADS=$(bashio::config 'www_uploads')
SHOUTCAST2=$(bashio::config 'shoutcast2_install')
STEREO_TOOL=$(bashio::config 'stereo_tool_install')
RSAS=$(bashio::config 'rsas_install')
GEOLITE=$(bashio::config 'geolite_install')
SFTPGO=$(bashio::config 'sftpgo_data')
ACME=$(bashio::config 'acme')

bashio::log.info "Setting up AzuraCast volume mappings..."

# Create symlinks
ln -sf "${STATION_DATA}" /var/azuracast/stations
ln -sf "${BACKUPS}" /var/azuracast/backups
ln -sf "${DB_DATA}" /var/lib/mysql
ln -sf "${WWW_UPLOADS}" /var/azuracast/storage/uploads
ln -sf "${SHOUTCAST2}" /var/azuracast/storage/shoutcast2
ln -sf "${STEREO_TOOL}" /var/azuracast/storage/stereo_tool
ln -sf "${RSAS}" /var/azuracast/storage/rsas
ln -sf "${GEOLITE}" /var/azuracast/storage/geoip
ln -sf "${SFTPGO}" /var/azuracast/storage/sftpgo
ln -sf "${ACME}" /var/azuracast/storage/acme

bashio::log.info "Volume mappings completed successfully"



export MYSQL_HOST=$(bashio::services "mysql" "host")
export MYSQL_PORT=$(bashio::services "mysql" "port")
export MYSQL_USER=$(bashio::services "mysql" "username")
export MYSQL_PASSWORD=$(bashio::services "mysql" "password")

env

if bashio::config.true 'reset_database'; then
    bashio::log.warning 'Recreating database'
    echo "DROP DATABASE IF EXISTS azuracast;" \
    | mariadb -h "${MYSQL_HOST}" -P "${MYSQL_PORT}" -u "${MYSQL_USER}" -p"${MYSQL_PASSWORD}"

    # Create database if not exists
    echo "CREATE DATABASE IF NOT EXISTS azuracast;" \
        | mariadb -h "${MYSQL_HOST}" -P "${MYSQL_PORT}" -u "${MYSQL_USER}" -p"${MYSQL_PASSWORD}"

    #Remove reset_database option
    bashio::addon.option 'reset_database'
fi

if bashio::config.true 'run_installer'; then

    docker_installer install

    bashio::addon.option 'run_installer'
fi


chmod 777 /config

CONFIGPATH="/config/custom.sh"

if [ ! -f $CONFIGPATH ]; then
    cp /custom.sh $CONFIGPATH
fi

chmod +x $CONFIGPATH

exec $CONFIGPATH