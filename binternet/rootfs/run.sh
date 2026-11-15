#!/usr/bin/bashio

JSONSOURCE="/data/options.json"
mapfile -t arr < <(jq -r 'keys[]' "${JSONSOURCE}")
for KEY in "${arr[@]}"; do
    if bashio::config.has_value "$KEY"; then
        VALUE=$(bashio::config "$KEY")
        export "$KEY=$VALUE"
    fi
done

CONFIGPATH="/config/custom.sh"

if [ ! -f $CONFIGPATH ]; then
    cp /custom.sh $CONFIGPATH
fi

#custom.sh migrate
sed -i "s%php-fpm84%php-fpm*%g" $CONFIGPATH

chmod +x $CONFIGPATH

exec $CONFIGPATH
