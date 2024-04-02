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

env

if bashio::config.true 'reset_database'; then
    bashio::log.warning 'Recreating database'
    echo "DROP DATABASE IF EXISTS azuracast;" \
    | mariadb -h "${MYSQL_HOST}" -P "${MYSQL_PORT}" -u "${MYSQL_USER}" -p"${MYSQL_PASSWORD}"

    #Remove reset_database option
    bashio::addon.option 'reset_database'
fi

# Create database if not exists
echo "CREATE DATABASE IF NOT EXISTS azuracast;" \
    | mariadb -h "${MYSQL_HOST}" -P "${MYSQL_PORT}" -u "${MYSQL_USER}" -p"${MYSQL_PASSWORD}"

chmod 777 /config

su azuracast -c exec /usr/bin/tini -s /usr/local/bin/my_init -- --no-main-command