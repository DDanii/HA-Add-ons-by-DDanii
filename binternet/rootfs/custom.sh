#!/usr/bin/bashio
#write your custom commands befor the exec command


sudo --user=nginx /usr/sbin/php-fpm84 -D && /usr/sbin/nginx -c /etc/nginx/nginx.conf -g 'daemon off;'