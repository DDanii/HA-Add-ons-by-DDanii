#!/usr/bin/bashio

echo "Started hassio setup"

JSONSOURCE="/data/options.json"
echo "${JSONSOURCE}"
mapfile -t arr < <(jq -r 'keys[]' "${JSONSOURCE}")
echo "${arr[0]}"
for KEY in "${arr[@]}"; do
    echo "$KEY"
    if bashio::config.has_value "$KEY"; then
        VALUE=$(bashio::config "$KEY")
        export "$KEY=$VALUE"
    fi
done

sudo -g \#1000 -u \#1000 exec /usr/local/bin/entrypoint.sh