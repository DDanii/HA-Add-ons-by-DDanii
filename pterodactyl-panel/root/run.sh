#!/usr/bin/bashio

export DB_HOST=$(bashio::services "mysql" "host")
export DB_PASSWORD=$(bashio::services "mysql" "password")
export DB_PORT=$(bashio::services "mysql" "port")
export DB_USERNAME=$(bashio::services "mysql" "username")
export DB_PORT=3306
export DB_DATABASE=pterodactyl
export REDIS_HOST=$(bashio::config 'REDIS_HOST')
export REDIS_PORT=$(bashio::config 'REDIS_PORT')

setup_user=false

if bashio::config.true 'ssl'; then
    export SSL_CERT=/ssl/$(bashio::config 'certfile')
    export SSL_CERT_KEY=/ssl/$(bashio::config 'keyfile')
fi

if bashio::config.true 'reset_database'; then
    bashio::log.warning 'Droping database'
    echo "DROP DATABASE IF EXISTS ${DB_DATABASE};" |
        mysql -h "${DB_HOST}" -P "${DB_PORT}" -u "${DB_USERNAME}" -p"${DB_PASSWORD}"
    bashio::addon.option 'reset_database'
    setup_user=true
fi

bashio::log.info 'Creating database if not existing'
echo "CREATE DATABASE IF NOT EXISTS ${DB_DATABASE};" |
    mysql -h "${DB_HOST}" -P "${DB_PORT}" -u "${DB_USERNAME}" -p"${DB_PASSWORD}"

# bashio::log.info 'Granting database privileges'
# echo "GRANT ALL PRIVILEGES ON ${DB_DATABASE}.* TO '${DB_USERNAME}' WITH GRANT OPTION;" |
#     mysql -h "${DB_HOST}" -P "${DB_PORT}" -u "${DB_USERNAME}" -p"${DB_PASSWORD}"

if [ $setup_user = "true" ]; then
    bashio::log.info 'Seeding database'
    php artisan migrate --seed --no-interaction --force
	echo "[setup] creating admin user with password homeassistant..."
    php artisan p:user:make --email=admin@example.com --username=admin --name-first=admin --name-last=admin --admin=1 --password=homeassistant || true
fi

# bashio::var.json \
#     interface "$(bashio::addon.ip_address)" \
#     port "^$(bashio::addon.ingress_port)" \
#     protocol "http" \
#     certfile "$(bashio::config 'certfile')" \
#     keyfile "$(bashio::config 'keyfile')" \
#     ssl "^$(bashio::config 'ssl')" |
# tempio \
#     -template /etc/nginx/templates/ingress.gtpl \
#     -out /etc/nginx/servers/ingress.conf

/usr/bin/tini /entrypoint.sh start-web
