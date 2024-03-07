#!/usr/bin/bashio

mkdir -p /config/db
chown -R mongodb:mongodb /config/db
usermod -d /config/db mongodb

journal_path="$(bashio::config 'journal_path')"

if bashio::config.has_value 'journal_path'; then
    rm -rf /config/db/journal
    mkdir -p "$journal_path"
    chown -R mongodb:mongodb "$journal_path"
    ln -s "$journal_path" /config/db/journal
fi

touch /config/mongod.conf

exec /usr/local/bin/docker-entrypoint.sh mongod --dbpath /config/db --config /config/mongod.conf