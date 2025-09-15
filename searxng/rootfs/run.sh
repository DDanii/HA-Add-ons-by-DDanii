#!/bin/sh

mkdir -p /config/searxng
mkdir -p /config/data/searxng

rm -rf /etc/searxng
rm -rf /var/cache/searxng

ln -s /config/searxng /etc/
ln -s /config/data/searxng /var/cache/

exec /usr/local/searxng/entrypoint.sh