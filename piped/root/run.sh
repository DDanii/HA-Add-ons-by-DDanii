#!/usr/bin/bash

cp -rnf /templates/config.properties /config/
ln -s /config/config.properties /app/

/hotspot-entrypoint.sh
