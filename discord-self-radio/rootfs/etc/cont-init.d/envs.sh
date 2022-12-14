#!/usr/bin/with-contenv bashio

export DISCORDBOT_TOKEN
export DISCORDBOT_OWNER_ID
  
if ! bashio::config.has_value 'DISCORDBOT_TOKEN'; then
  bashio::exit.nok "Setting the discord token is required!"
fi
DISCORDBOT_TOKEN=$(bashio::config 'DISCORDBOT_TOKEN')

if ! bashio::config.has_value 'DISCORDBOT_OWNER_ID'; then
  bashio::exit.nok "Setting the owner id is required!"
fi
DISCORDBOT_OWNER_ID=$(bashio::config 'DISCORDBOT_OWNER_ID')

if ! bashio::config.has_value 'DISCORDBOT_STREAM_LINK'; then
  bashio::log.warning "setting a stream link required probably"
else
  export DISCORDBOT_STREAM_LINK
  DISCORDBOT_STREAM_LINK=$(bashio::config 'DISCORDBOT_STREAM_LINK')
fi

if ! bashio::config.has_value 'DISCORDBOT_JOIN_WEBHOOK'; then
  bashio::log.info "join webhook is not set"
else
  export DISCORDBOT_JOIN_WEBHOOK
  DISCORDBOT_JOIN_WEBHOOK=$(bashio::config 'DISCORDBOT_JOIN_WEBHOOK')
fi


