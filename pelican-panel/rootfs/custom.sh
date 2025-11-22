#!/usr/bin/bashio
#write your custom commands befor the exec command


exec sudo -E -u www-data:www-data /bin/ash /entrypoint.sh supervisord -n -c /etc/supervisord.conf
