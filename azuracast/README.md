# Home assistant add-on: AzuraCast

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fazuracast%2Fconfig.json)
![Ingress](https://img.shields.io/badge/dynamic/json?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fazuracast%2Fconfig.json)
![Arch](https://img.shields.io/badge/dynamic/json?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fazuracast%2Fconfig.json)

[![Builder](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml)
[![Lint](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml)

## About

TODO

Well this has offical conrainer but there are setup steps in a long bash file that
I never read through so it is not working

The MariaDB Addon is needed before installing this one!

When setting up station set their location in /config later you can add music folder from /media or /share too.

This addon has built in reddis, but if you already using the reddis addon you can point azuracast to it and it will disable the internal one.

It needs much more system resources than the [Icecast](https://github.com/mohankumargupta/ha-addons/tree/master/icecast) and [MPD](https://github.com/Poeschl/Hassio-Addons/tree/main/mpd) addons so I personally use those.

## Configuration

```yaml
TODO: this too
```

## Support

Create an issue on [github](https://github.com/DDanii/HA-Add-ons-by-DDanii/issues/new)
