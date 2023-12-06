#!/usr/bin/bashio

docker-entrypoint.sh redis-server --save "$(bashio::config 'save')"