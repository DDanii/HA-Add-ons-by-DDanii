#!/usr/bin/bashio

JSONSOURCE="/data/options.json"
sudo mapfile -t arr < <(jq -r 'keys[]' "${JSONSOURCE}")
for KEY in "${arr[@]}"; do
    if bashio::config.has_value "$KEY"; then
        VALUE=$(bashio::config "$KEY")
        export "$KEY=$VALUE"
    fi
done

exec /usr/local/bin/entrypoint.sh