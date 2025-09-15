#!/bin/sh

mkdir -p /config/searxng
mkdir -p /config/data/searxng

rm -f /etc/searxng
rm -f /var/cache/searxng

ln -s /config/searxng /etc/
ln -s /config/data/searxng /var/cache/

exec /usr/local/searxng/entrypoint.sh