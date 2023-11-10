#!/bin/bash

mkdir -p /config/addons_config/mongodb44/db
rm -rf /data/db
ln -s /config/addons_config/mongodb44/db /data/

/usr/local/bin/docker-entrypoint.sh mongod