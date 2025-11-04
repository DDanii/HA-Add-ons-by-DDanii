#!/usr/bin/bashio
#write your custom commands befor the exec command


docker-entrypoint.sh redis-server --save "$(bashio::config 'save')"