# Home assistant add-on: Pelican Panel

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fpelican-panel%2Fconfig.json)
![Ingress](https://img.shields.io/badge/dynamic/json?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fpelican-panel%2Fconfig.json)
![Arch](https://img.shields.io/badge/dynamic/json?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fpelican-panel%2Fconfig.json)

[![Builder](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml)
[![Lint](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml)

## About

Pelican Panel is an open-source, web-based application designed for easy management of game servers. It offers a user-friendly interface for deploying, configuring, and managing servers, with features like real-time resource monitoring, Docker container isolation, and extensive customization options. Ideal for both individual gamers and hosting companies, it simplifies server administration without requiring deep technical knowledge.

## Configuration

```yaml
APP_URL: http://localhost
ADMIN_EMAIL: USEYOUROWNEMAILHERE@example.com
```

[Docs](https://pelican.dev/docs/panel/advanced/docker/#set-required-environment-variables)

If you need a custom caddy file you can put it in the addon config folder and add this command to the custom.sh file:

```
cp /pelican-data/Caddyfile /etc/caddy/Caddyfile
```

## Customization

After the first run in the addon config folder (addon_configs/57fef649_pelican-panel) there will be a custom.sh file in witch you can add your own commands

## Support

Create an issue on [github](https://github.com/DDanii/HA-Add-ons-by-DDanii/issues/new)
