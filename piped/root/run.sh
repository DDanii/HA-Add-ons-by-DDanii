#!/usr/bin/bash

mkdir -p /config/addons_config/piped

ln -s /config/addons_config/piped /app/config.properties

/hotspot-entrypoint.sh
