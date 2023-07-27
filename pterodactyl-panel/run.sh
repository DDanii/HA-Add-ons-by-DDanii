#!/usr/bin/bashio
redis-server &


export DB_HOST=$(bashio::services "mysql" "host")
export DB_PASSWORD=$(bashio::services "mysql" "password")
export DB_PORT=$(bashio::services "mysql" "port")
export DB_USERNAME=$(bashio::services "mysql" "username")
export DB_PORT=3306
export DB_DATABASE=pterodactyl

setup_user=false

directory=/share/pterodactyl
if [ ! -d $directory ]; then
    echo "Creating ${directory}"
    mkdir -p $directory
    setup_user=true
fi

ln -s -f $directory /data

if bashio::config.true 'ssl'; then
    export SSL_CERT=/ssl/$(bashio::config 'certfile')
    export SSL_CERT_KEY=/ssl/$(bashio::config 'keyfile')
fi


# if [ $setup_user = "true" ]; then
# 	echo "[setup] creating root user with password homeassistant..."
#     php artisan p:user:make --email=root@example.com --username=root --name-first=ro --name-last=ot --admin=1 --password=homeassistant
# fi

echo "[start] Starting Pterodactyl Panel"

/sbin/tini -s /entrypoint.sh p:start
