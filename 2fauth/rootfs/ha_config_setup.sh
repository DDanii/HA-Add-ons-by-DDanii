#!/usr/bin/bashio

echo "Started hassio setup"

chown -R 1000 /2fauth

JSONSOURCE="/data/options.json"

mapfile -t arr < <(jq -r 'keys[]' "${JSONSOURCE}")
for KEY in "${arr[@]}"; do
    if bashio::config.has_value "$KEY"; then
        VALUE=$(bashio::config "$KEY")
        export "$KEY=$VALUE"
    fi
done

sudo -E -u \#1000 /usr/local/bin/entrypoint.sh