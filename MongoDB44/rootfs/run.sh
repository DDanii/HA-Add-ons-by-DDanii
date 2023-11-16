#!/bin/bash

mkdir -p /config/addons/mongodb44/db
chown -R mongodb:mongodb /config/addons/mongodb44/db
usermod -d /config/addons/mongodb44/db mongodb

export HOME=/config/addons/mongodb44/db

/usr/local/bin/docker-entrypoint.sh mongod --dbpath /config/addons/mongodb44/db