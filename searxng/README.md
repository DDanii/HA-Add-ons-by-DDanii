# Home assistant add-on: searxng

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fsearxng%2Fconfig.json)
![Ingress](https://img.shields.io/badge/dynamic/json?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fsearxng%2Fconfig.json)
![Arch](https://img.shields.io/badge/dynamic/json?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fsearxng%2Fconfig.json)

[![Builder](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml)
[![Lint](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml)

## About

[SearXNG](https://docs.searxng.org/index.html) is a free internet metasearch engine which aggregates results from up to 247 search services. Users are neither tracked nor profiled. Additionally, SearXNG can be used over Tor for online anonymity.

## Configuration

The apps can be configured in the addon_configs/57fef649_searxng/settings.yml file

If you installed the Valkey addon you can connect to it by setting the Valkey url in the settings.yml to:
```
  url: valkey://57fef649-valkey:6379/0
```

For convinience there is one addon configuration option:

```yaml
"set_base_url_for_ingress": true
```

If the set_base_url_for_ingress enabled it sets the SEARXNG_BASE_URL environment variable which is needed for ingress usage and it overrides the base_url variable in settings.yml

## Customization

After the first run in the addon config folder (addon_configs/57fef649_searxng) there will be a custom.sh file in witch you can add your own commands


## Support

Create an issue on [github](https://github.com/DDanii/HA-Add-ons-by-DDanii/issues/new)
