#!/usr/bin/bashio

echo "Started hassio setup"

JSONSOURCE="/data/options.json"

mapfile -t arr < <(jq -r 'keys[]' "${JSONSOURCE}")
for KEY in "${arr[@]}"; do
    echo "$KEY"
    if bashio::config.has_value "$KEY"; then
        echo "has value"
        VALUE=$(bashio::config "$KEY")
        echo "$VALUE"
        export "$KEY=$VALUE"
    fi
done

sudo -g \#1000 -u \#1000 exec /usr/local/bin/entrypoint.sh