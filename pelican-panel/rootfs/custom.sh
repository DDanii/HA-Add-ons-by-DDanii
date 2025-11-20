#!/usr/bin/bashio
#write your custom commands befor the exec command


exec supervisord -n -c /etc/supervisord.conf /bin/ash /entrypoint.sh
