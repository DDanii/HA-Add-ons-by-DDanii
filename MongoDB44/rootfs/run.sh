#!/bin/bash

mkdir -p /config/addons_config/mongodb44
ln -s /data/db /config/addons_config/mongodb44

/docker-entrypoint.sh mongod