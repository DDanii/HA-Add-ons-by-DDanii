#!/usr/bin/bashio

dl_path="$(bashio::config 'dl_path')"

if bashio::config.has_value 'dl_path'; then
    rm -rf /downloads
    mkdir -p "$dl_path"
    chmod 777 "$dl_path"
    ln -s "$dl_path" /downloads
fi

JSONSOURCE="/data/options.json"
mapfile -t arr < <(jq -r 'keys[]' "${JSONSOURCE}")
for KEY in "${arr[@]}"; do
    if bashio::config.has_value "$KEY"; then
        VALUE=$(bashio::config "$KEY")
        export "$KEY=$VALUE"
    fi
done

if bashio::config.true 'vacuum'; then
    apt-get install sqlite3
    sqlite3 /config/db/pinchflat.db "VACUUM;"
fi

CONFIGPATH="/config/custom.sh"

if [ ! -f $CONFIGPATH ]; then
    cp /custom.sh $CONFIGPATH
fi

chmod +x $CONFIGPATH

exec $CONFIGPATH