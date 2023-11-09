#!/bin/bash

mkdir -p /config/addons_config/mongodb
ln -s /data/db /config/addons_config/mongodb

/docker-entrypoint.sh mongod