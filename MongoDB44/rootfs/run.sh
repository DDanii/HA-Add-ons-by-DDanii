#!/usr/bin/bashio

mkdir -p /config/db
chown -R mongodb:mongodb /config/db
usermod -d /config/db mongodb

export HOME=/config/db

args=""

if bashio::config.true 'smallfiles'; then
    args="${args} --smallfiles"
fi

/usr/local/bin/docker-entrypoint.sh mongod --dbpath /config/db #"${args}"