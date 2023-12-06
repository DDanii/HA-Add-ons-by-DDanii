#!/usr/bin/bashio

mkdir -p /config/db
chown -R mongodb:mongodb /config/db
usermod -d /config/db mongodb

args="--dbpath /config/db --config /config/mongod.conf"

journal_path="$(bashio::config 'journal_path')"

if bashio::config.has_value 'journal_path'; then
    rm -r /config/db/journal
    mkdir -p "$journal_path"
    ln "$journal_path" /config/db/journal
fi

/usr/local/bin/docker-entrypoint.sh mongod "${args}"