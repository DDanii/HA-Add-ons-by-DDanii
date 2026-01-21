#!/usr/bin/bashio

if ! bashio::config.has_value 'ROMM_AUTH_SECRET_KEY' ; then
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

paths="romm_library romm_assets romm_config romm_resources redis_data"

for path in $paths; do
    value=$(bashio::config "$path")
    mkdir -p "$value"
    path="${path//romm_/romm/}"
    path="${path//_/-}"
    ln -s "$value" "/${path//#/\/}"
done
touch /romm/config/config.yml

CONFIGPATH="/config/custom.sh"

if [ ! -f $CONFIGPATH ]; then
    cp /custom.sh $CONFIGPATH
fi

chmod +x $CONFIGPATH

exec $CONFIGPATH
