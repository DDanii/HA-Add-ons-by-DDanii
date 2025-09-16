#!/bin/sh

set_url=$(cat /data/options.json | grep set_base_url_for_ingress | cut -d: -f2 | xargs)

if [ "$set_url" = "true" ]; then
export SEARXNG_BASE_URL

header="Authorization: Bearer $SUPERVISOR_TOKEN"

SEARXNG_BASE_URL="$(wget --header=$header \
    http://supervisor/addons/$HOSTNAME/info \
    | grep ingress_url | cut -d: -f2 | xargs | cut -d, -f1)"
fi

exec /usr/local/searxng/entrypoint.sh