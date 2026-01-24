#!/usr/bin/bashio
#write your custom commands befor the exec command


exec sudo -E -u"$PGID:$PUID" node scripts/deployment/docker-entrypoint.js
