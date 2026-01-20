#!/usr/bin/bashio

if [ ! "$(bashio::config.has_value 'ROMM_AUTH_SECRET_KEY')" ]; then
    bashio::addon.option "ROMM_AUTH_SECRET_KEY" "$(openssl rand -hex 32)"
fi

JSONSOURCE="/data/options.json"
mapfile -t arr < <(jq -r 'keys[]' "${JSONSOURCE}")
for KEY in "${arr[@]}"; do
    if bashio::config.has_value "$KEY"; then
        VALUE=$(bashio::config "$KEY")
        export "$KEY=$VALUE"
    fi
done

paths="/romm/library /romm/assets /romm/config /romm/resources redis-data"

for path in $paths; do
    value=$(bashio::config "$path")
    if [ -n "$value" ]; then
        mkdir -p "$value"
        ln -s "$value" "$path"
    fi
done


CONFIGPATH="/config/custom.sh"

if [ ! -f $CONFIGPATH ]; then
    cp /custom.sh $CONFIGPATH
fi

chmod +x $CONFIGPATH

exec $CONFIGPATH
