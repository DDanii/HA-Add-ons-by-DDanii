# Home assistant add-on: wikimore

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fwikimore%2Fconfig.json)
![Ingress](https://img.shields.io/badge/dynamic/json?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fwikimore%2Fconfig.json)
![Arch](https://img.shields.io/badge/dynamic/json?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fwikimore%2Fconfig.json)

[![Builder](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml)
[![Lint](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml)

## About

[Wikimore](https://git.private.coffee/PrivateCoffee/wikimore) is a simple frontend for Wikimedia projects. It uses the MediaWiki API to fetch data from Wikimedia projects and display it in a user-friendly way. It is built using Flask.

## Configuration

All config is optional

Example:

```yaml
WIKIMORE_HOST: "0.0.0.0"
WIKIMORE_SOCKET: ""            # optional, overrides host/port when set
WIKIMORE_DEBUG: false
WIKIMORE_INSTANCE_HOSTNAME: "my-wikimore.local"
WIKIMORE_ADMIN_EMAIL: "admin@example.com"
WIKIMORE_NO_LANGSORT: false
WIKIMORE_LANGSORT: "en,es,ja,de,fr,zh,ru,it,pt,pl,nl,ar"
WIKIMORE_CACHE_TYPE: "SimpleCache"   # SimpleCache|FileSystemCache|RedisCache
WIKIMORE_CACHE_DIR: "/tmp/wikimore_cache" # FileSystemCache location
WIKIMORE_REDIS_URL: "redis://57fef649-redis:6379"
WIKIMORE_CACHE_TIMEOUT: 3600
```

## Customization

After the first run in the addon config folder (addon_configs/57fef649_wikimore) there will be a custom.sh file in witch you can add your own commands

## Support

Create an issue on [github](https://github.com/DDanii/HA-Add-ons-by-DDanii/issues/new)
