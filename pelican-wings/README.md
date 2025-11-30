# Home assistant add-on: pelican-wings

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fpelican-wings%2Fconfig.json)
![Ingress](https://img.shields.io/badge/dynamic/json?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fpelican-wings%2Fconfig.json)
![Arch](https://img.shields.io/badge/dynamic/json?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fpelican-wings%2Fconfig.json)

[![Builder](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml)
[![Lint](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml)

## Warning

This addon will run additional docker containers and that will render your home assistant unsupported.

## About

Wings is Pelican's server control plane, built for the rapidly changing gaming industry and designed to be highly performant and secure. Wings provides an HTTP API allowing you to interface directly with running server instances, fetch server logs, generate backups, and control all aspects of the server lifecycle.

In addition, Wings ships with a built-in SFTP server allowing your system to remain free of Pelican specific dependencies, and allowing users to authenticate with the same credentials they would normally use to access the Panel.

## Configuration

config.yml expected in the addon_config folder

After first run the app will fill the config file with additional options
you need to change all folder routes. There are 4 folder roots you can chose from:

```
/mnt/data/supervisor/addon_configs/57fef649_pelican-wings #addon config folder
/mnt/data/supervisor/share #share folder
/mnt/data/supervisor/media #media folder
/mnt/data/supervisor/homeassistant #home asssistant config folder
```


## Support

Create an issue on [github](https://github.com/DDanii/HA-Add-ons-by-DDanii/issues/new)
