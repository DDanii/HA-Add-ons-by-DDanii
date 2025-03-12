#!/usr/bin/bashio

if bashio::config.has_value 'config_location'; then
    ln -s "$(bashio::config 'config_location')" /etc/pterodactyl/config.yml
fi

/usr/bin/tini -s /entrypoint.sh