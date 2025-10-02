#!/bin/bash
#write your custom commands befor the exec command


exec docker-entrypoint.sh valkey-server /config/valkey.conf
