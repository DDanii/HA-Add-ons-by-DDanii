#!/usr/bin/bashio

export VIEWTUBE_REDIS_HOST=$(bashio::config 'VIEWTUBE_REDIS_HOST')
export VIEWTUBE_DATABASE_HOST=$(bashio::config 'VIEWTUBE_DATABASE_HOST')


node /home/app/server/dist/main.cjs
