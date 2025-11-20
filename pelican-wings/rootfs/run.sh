#!/usr/bin/bashio

JSONSOURCE="/data/options.json"
mapfile -t arr < <(jq -r 'keys[]' "${JSONSOURCE}")
for KEY in "${arr[@]}"; do
    if bashio::config.has_value "$KEY"; then
        VALUE=$(bashio::config "$KEY")
        export "$KEY=$VALUE"
    fi
done

todo
ln -s /mnt/data/supervisor/homeassistant/addon_config/57fef649_pelican-wings/pelican /etc/
ln -s /mnt/data/supervisor/homeassistant/addon_config/57fef649_pelican-wings/lib/pelican /var/lib/
ln -s /mnt/data/supervisor/homeassistant/addon_config/57fef649_pelican-wings/log/pelican /var/log/
todo
CONFIGPATH="/mnt/data/supervisor/homeassistant/addon_config/57fef649_pelican-wings/custom.sh"

if [ ! -f $CONFIGPATH ]; then
    cp /custom.sh $CONFIGPATH
fi

chmod +x $CONFIGPATH

ln -l /mnt/data/supervisor/homeassistant/addon_config/TODO_pelican-wings/config.yml /etc/pelican/

exec $CONFIGPATH
