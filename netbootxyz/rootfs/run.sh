#!/usr/bin/bashio

ln -s "$(bashio::config assets)" /assets

CONFIGPATH="/config/custom.sh"

if [ ! -f $CONFIGPATH ]; then
    cp /custom.sh $CONFIGPATH
fi

chmod +x $CONFIGPATH

exec $CONFIGPATH
