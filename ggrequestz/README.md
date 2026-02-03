# Home assistant add-on: GG Requestz

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fggrequestz%2Fconfig.json)
![Ingress](https://img.shields.io/badge/dynamic/json?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fggrequestz%2Fconfig.json)
![Arch](https://img.shields.io/badge/dynamic/json?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fggrequestz%2Fconfig.json)

[![Builder](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml)
[![Lint](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml)

## About

[GG Requestz](https://github.com/XTREEMMAK/ggrequestz) is a modern game discovery and request management platform with IGDB integration, ROMM library support, and powerful search capabilities.

## Configuration

[Postgres](https://github.com/alexbelgium/hassio-addons/tree/master/postgres_15) is required

`SESSION_SECRET`: Session encryption key. If you leave it empty it will auto generate one.

[Offical configuration guide](https://github.com/XTREEMMAK/ggrequestz/blob/main/docs/CONFIGURATION.md)

```yaml
POSTGRES_PASSWORD: ************
IGDB_CLIENT_ID: **********
IGDB_CLIENT_SECRET: ********
AUTH_METHOD: basic
POSTGRES_HOST: db21ed7f-postgres
POSTGRES_PORT: 5432
POSTGRES_DB: ggrequestz
POSTGRES_USER: postgres
PUID: 1000
PGID: 1000
```

## Customization

After the first run in the addon config folder (addon_configs/57fef649_ggrequestz) there will be a custom.sh file in witch you can add your own commands

## Support

Create an issue on [github](https://github.com/DDanii/HA-Add-ons-by-DDanii/issues/new)
