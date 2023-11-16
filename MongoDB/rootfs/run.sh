#!/bin/bash

mkdir -p /config/addons/mongodb/db
chown -R mongodb:mongodb /config/addons/mongodb/db
usermod -d /config/addons/mongodb/db mongodb

export HOME=/config/addons/mongodb/db

/usr/local/bin/docker-entrypoint.sh mongod --dbpath /config/addons/mongodb/db