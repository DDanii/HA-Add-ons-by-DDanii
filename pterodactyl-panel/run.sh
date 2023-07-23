#!/usr/bin/bashio

export SSL_CERT=/ssl/$(bashio::config 'certfile')
export SSL_CERT_KEY=/ssl/$(bashio::config 'keyfile')

DB_HOST=$(bashio::services "mysql" "host")

if [ $DB_HOST = "localhost" ]; then
	DB_HOST=127.0.0.1
fi


export DB_HOST=$DB_HOST
echo env
export DB_PASSWORD=$(bashio::services "mysql" "password")
export DB_PORT=$(bashio::services "mysql" "port")
export DB_USERNAME=$(bashio::services "mysql" "username")
export DB_PORT=3306
export DB_DATABASE=pterodactyl

echo "[start] Starting Pterodactyl Panel"

source /sbin/tini -s /entrypoint.sh p:start
