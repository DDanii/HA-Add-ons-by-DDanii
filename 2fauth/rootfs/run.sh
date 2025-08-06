#!/usr/bin/bashio

echo "Started hassio setup"

bashio::log.level 1

JSONSOURCE="/data/options.json"
mapfile -t arr < <(jq -r 'keys[]' "${JSONSOURCE}")
for KEY in "${arr[@]}"; do
    if bashio::config.has_value "$KEY"; then
        VALUE=$(bashio::config "$KEY")
        export "$KEY=$VALUE"
    fi
done

sudo -g \#1000 -u \#1000 exec /usr/local/bin/entrypoint.sh