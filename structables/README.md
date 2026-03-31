# Home assistant app (add-on): Structables

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fstructables%2Fconfig.json)
![Ingress](https://img.shields.io/badge/dynamic/json?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fstructables%2Fconfig.json)
![Arch](https://img.shields.io/badge/dynamic/json?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fstructables%2Fconfig.json)

[![Builder](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml)
[![Lint](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml)

## About

An open [source](https://git.private.coffee/PrivateCoffee/structables) alternative front-end to Instructables

## Configuration

All config is optional

```yaml
STRUCTABLES_LISTEN_HOST: "127.0.0.1"
STRUCTABLES_INVIDIOUS: ""                    # hostname of Invidious instance
STRUCTABLES_UNSAFE: false
STRUCTABLES_PRIVACY_FILE: ""                 # path to privacy file
STRUCTABLES_DEBUG: false
STRUCTABLES_THEME: "dark"                    # dark|light
STRUCTABLES_CACHE_ENABLED: true
STRUCTABLES_CACHE_DIR: "/tmp/structables_cache"
STRUCTABLES_CACHE_MAX_AGE: 604800
STRUCTABLES_CACHE_MAX_SIZE: 1073741824
STRUCTABLES_CACHE_CLEANUP_INTERVAL: 3600
```

For cache dir possible root folders: /media, /share, /config

## Customization

After the first run in the addon config folder (addon_configs/57fef649_structables) there will be a custom.sh file in witch you can add your own commands

## Support

Create an issue on [github](https://github.com/DDanii/HA-Add-ons-by-DDanii/issues/new)
