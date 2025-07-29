# Home assistant add-on: openldap

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fopenldap%2Fconfig.json)
![Ingress](https://img.shields.io/badge/dynamic/json?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fopenldap%2Fconfig.json)
![Arch](https://img.shields.io/badge/dynamic/json?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fopenldap%2Fconfig.json)

[![Builder](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml)
[![Lint](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml)

## About

TODO

## Configuration

```yaml
LDAP_TLS: false,
LDAP_ORGANISATION: "My Company",
LDAP_DOMAIN: "my-company.com",
LDAP_ADMIN_PASSWORD: "test",
LDAP_CONFIG_PASSWORD": "example",
LDAP_READONLY_USER": false,
LDAP_TLS_CRT_FILENAME: "/ssl/fullchain.pem",
LDAP_TLS_KEY_FILENAME: "/ssl/privkey.pem",
LDAP_TLS_CA_CRT_FILENAME: "/ssl/ca.crt"
```

LDAP_TLS : If set to true once can't be disabled.

## Support

Create an issue on [github](https://github.com/DDanii/HA-Add-ons-by-DDanii/issues/new)
