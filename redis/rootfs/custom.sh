#!/usr/bin/bashio
#write your custom commands befor the docker-entrypoint command


docker-entrypoint.sh redis-server --save "$(bashio::config 'save')"