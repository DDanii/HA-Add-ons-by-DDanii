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

chmod +x $CONFIGPATH

ARIACONFIGPATH="/config/aria2.conf"

if [ ! -f $ARIACONFIGPATH ]; then
    cp /aria2.conf $ARIACONFIGPATH
fi



conf_path=/config

while read -r name value; do 
    echo "Content of $name is ${value//\"/}"; 
    if [ $name == "dir" ]; then
        data_path="${value//\"/}"
    fi
done < conf_path/aria2.conf 

echo "$data_path"

if [ -n "$RPC_SECRET" ]; then
    sed -i '/^rpc-secret=/d' $conf_path/aria2.conf
    printf '\nrpc-secret=%s\n' "${RPC_SECRET}" >>$conf_path/aria2.conf

    if [ -n "$EMBED_RPC_SECRET" ]; then
        echo "Embedding RPC secret into ariang Web UI"
        RPC_SECRET_BASE64=$(echo -n "${RPC_SECRET}" | base64 -w 0)
        sed -i 's,secret:"[^"]*",secret:"'"${RPC_SECRET_BASE64}"'",g' $ariang_js_path
    fi
fi

touch $conf_path/aria2.session

userid="$(id -u)" # 65534 - nobody, 0 - root
groupid="$(id -g)"

chown -R "$userid":"$groupid" $conf_path
chown -R "$userid":"$groupid" $data_path


exec $CONFIGPATH
