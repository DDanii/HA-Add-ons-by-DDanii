# Home assistant add-on: Discordbot self radio

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fdiscord-self-radio%2Fconfig.json)
![Ingress](https://img.shields.io/badge/dynamic/json?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fdiscord-self-radio%2Fconfig.json)
![Arch](https://img.shields.io/badge/dynamic/json?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fdiscord-self-radio%2Fconfig.json)

[![Builder](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml)
[![Lint](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml)

## About

[It](https://github.com/DDanii/discordbot-self-radio) is a discord bot to play a radio stream if you are alone / no one else can hear the bot.

## Configuration

```
DISCORDBOT_STREAM_LINK: https://25293.live.streamtheworld.com/Q_DANCE.mp3
DISCORDBOT_TOKEN: abottokenfromdiscorddeveloperportal
DISCORDBOT_OWNER_ID: "123456789101112"
DISCORDBOT_JOIN_WEBHOOK: http://192.168.1.2:8123/api/webhook/discord_join

```

### Option: `DISCORDBOT_STREAM_LINK`

Radio stream link example: https://25293.live.streamtheworld.com/Q_DANCE.mp3

### Option: `DISCORDBOT_TOKEN`

Bot token from [discord's developer portal](https://discordapp.com/developers/applications)

### Option: `DISCORDBOT_OWNER_ID`

[User id](https://support.discord.com/hc/en-us/articles/206346498-Where-can-I-find-my-User-Server-Message-ID-) the bot will join to

### Option: `DISCORDBOT_JOIN_WEBHOOK`

Optional, url to POST if someone joins to you

## Support

Create an issue on [github](https://github.com/DDanii/HA-Add-ons-by-DDanii/issues/new)
