#!/bin/bash


if [ ! -f /config/valkey.conf ]; then
    cp /usr/src/valkey/valkey.conf /config/valkey.conf
fi

CONFIGPATH="/config/custom.sh"

if [ ! -f $CONFIGPATH ]; then
    cp /custom.sh $CONFIGPATH
fi

chmod +x $CONFIGPATH

exec $CONFIGPATH
