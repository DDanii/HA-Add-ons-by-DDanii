#!/usr/bin/bashio

JSONSOURCE="/data/options.json"
mapfile -t arr < <(jq -r 'keys[]' "${JSONSOURCE}")
for KEY in "${arr[@]}"; do
    if bashio::config.has_value "$KEY"; then
        VALUE=$(bashio::config "$KEY")
        export "$KEY=$VALUE"
    fi
done

mkdir -p /config/data

if [ ! -f /config/docker.ini ]; then
    cp /opt/couchdb/etc/local.d/docker.ini /config/docker.ini || true
fi
tocuh /config/docker.ini
ln -sf /config/docker.ini /opt/couchdb/etc/local.d/

if [ ! -f /config/vm.args ]; then
    cp /opt/couchdb/etc/vm.args /config/vm.args || true
fi
touch /config/vm.args
ln -sf /config/vm.args /opt/couchdb/etc/

CONFIGPATH="/config/custom.sh"

if [ ! -f $CONFIGPATH ]; then
    cp /custom.sh $CONFIGPATH
fi

chmod +x $CONFIGPATH

exec $CONFIGPATH
