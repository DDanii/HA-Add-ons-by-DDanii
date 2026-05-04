#!/usr/bin/bashio
#write your custom commands befor the exec command


exec /usr/sbin/php-fpm84 -D _entrypoint__entrypoint_ /usr/sbin/nginx -c /etc/nginx/nginx.conf -g 'daemon off;'
