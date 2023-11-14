#!/bin/bash

if [ ! -d /config/addons/mongodb44/db ] || [ ! -d /config/addons/mongodb44/configdb ]; then
    mkdir -p /config/addons/mongodb44/db
    mkdir -p /config/addons/mongodb44/configdb
fi
chown -R mongodb:mongodb /config/addons/mongodb44/db /config/addons/mongodb44/configdb
usermod -d /config/addons/mongodb44/db mongodb

export HOME=/config/addons/mongodb44/db

/usr/local/bin/docker-entrypoint.sh mongod