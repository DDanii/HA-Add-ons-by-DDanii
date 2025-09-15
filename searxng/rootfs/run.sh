#!/bin/sh

sleep 600

mkdir -p /config/searxng
mkdir -p /config/data/searxng

ln -s /config/searxng /etc/
ln -s /config/data/searxng /var/cache/

exec /usr/local/searxng/entrypoint.sh