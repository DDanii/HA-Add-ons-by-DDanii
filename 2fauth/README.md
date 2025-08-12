# Home assistant add-on: 2fauth

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2F2fauth%2Fconfig.json)
![Ingress](https://img.shields.io/badge/dynamic/json?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2F2fauth%2Fconfig.json)
![Arch](https://img.shields.io/badge/dynamic/json?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2F2fauth%2Fconfig.json)

[![Builder](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml)
[![Lint](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml)

## About

A Web app to manage your Two-Factor Authentication (2FA) accounts and generate their security codes

## [Documentation](https://docs.2fauth.app/getting-started/installation/docker/docker-compose/)

## APP_KEY

The APP_KEY is the encryption key for our database and sessions. Keep this very secure.
If you change it all existing data must be considered LOST.
It must be a string of exactly 32 chars

## TRUSTED_PROXIES

Maybe you should set it to your homeassistant ip.
A comma separated IP list: The list of proxies IP to trust
'*': to trust any proxy

## Support

Create an issue on [github](https://github.com/DDanii/HA-Add-ons-by-DDanii/issues/new)
