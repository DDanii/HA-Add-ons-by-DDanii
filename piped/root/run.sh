#!/usr/bin/bash

cp -rnf /templates/config.properties /config/

ln -s /config /app

/hotspot-entrypoint.sh
