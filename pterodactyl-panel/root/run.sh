#!/usr/bin/bashio

export DB_HOST=$(bashio::services "mysql" "host")
export DB_PASSWORD=$(bashio::services "mysql" "password")
export DB_PORT=$(bashio::services "mysql" "port")
export DB_USERNAME=$(bashio::services "mysql" "username")
export DB_DATABASE=pterodactyl
export REDIS_HOST=$(bashio::config 'REDIS_HOST')
export REDIS_PORT=$(bashio::config 'REDIS_PORT')

setup_user=false

if bashio::config.true 'ssl'; then
    export SSL_CERT=/ssl/$(bashio::config 'certfile')
    export SSL_CERT_KEY=/ssl/$(bashio::config 'keyfile')
    export APP_URL=$(bashio::config 'APP_URL')
fi

if bashio::config.has_value 'TZ'; then
    export TZ=$(bashio::config 'TZ')
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

if [ $setup_user = "true" ]; then
    bashio::log.info 'Seeding database'
    php artisan migrate --seed --no-interaction --force
	echo "[setup] creating admin user with password homeassistant..."
    php artisan p:user:make --email=admin@example.com --username=admin --name-first=admin --name-last=admin --admin=1 --password=homeassistant || true
fi

/usr/bin/tini -s /entrypoint.sh p:worker &
/usr/bin/tini -s /entrypoint.sh p:cron &
/usr/bin/tini -s /entrypoint.sh start-web
