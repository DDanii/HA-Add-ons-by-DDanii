#!/usr/bin/bashio

export BACKEND_HOSTNAME

BACKEND_HOSTNAME=$(bashio::config 'BACKEND_HOSTNAME')

ash -c "sed -i s@https://pipedapi.kavin.rocks@$BACKEND_HOSTNAME@g /usr/share/nginx/html/assets/* && /docker-entrypoint.sh && nginx -g 'daemon off;'"
