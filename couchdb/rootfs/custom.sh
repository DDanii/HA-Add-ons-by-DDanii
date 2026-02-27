#!/usr/bin/bashio
#write your custom commands befor the exec command


exec tini -s -- /docker-entrypoint.sh /opt/couchdb/bin/couchdb
