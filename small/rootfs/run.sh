#!/usr/bin/bashio

JSONSOURCE="/data/options.json"
mapfile -t arr < <(jq -r 'keys[]' "${JSONSOURCE}")
for KEY in "${arr[@]}"; do
    if bashio::config.has_value "$KEY"; then
        VALUE=$(bashio::config "$KEY")
        export "$KEY=$VALUE"
    fi
done

if bashio::config.true "dark_mode"; then
    css=/opt/venv/lib64/*/site-packages/small/static/css/style.css

    sed -i '/    background-color: #fff;/c\    background-color: #222;' $css
    sed -i '/    background-color: #f4f4f4;/c\    background-color: #000;' $css
    sed -i '/    background-color: #f9f9f9;/c\    background-color: #000;' $css
    sed -i '/    color: #333;/c\    color: #fff;' $css

fi

CONFIGPATH="/config/custom.sh"

if [ ! -f $CONFIGPATH ]; then
    cp /custom.sh $CONFIGPATH
fi

chmod +x $CONFIGPATH

exec $CONFIGPATH
