# Home Assistant Add-on: RomM

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fromm%2Fconfig.json)
![Ingress](https://img.shields.io/badge/dynamic/json?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fromm%2Fconfig.json)
![Arch](https://img.shields.io/badge/dynamic/json?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fromm%2Fconfig.json)

[![Builder](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml)
[![Lint](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml)

## About

[RomM](https://romm.app/) (ROM Manager) allows you to scan, enrich, and browse your game collection with a clean and responsive interface. With support for multiple platforms, various naming schemes, and custom tags, RomM is a must-have for anyone who plays on emulators.

## Configuration

MariaDB addon and its manual configuration is required.

### Database Settings

You need to make MariaDB setup through its config settings:
    - Create a database: needs to mach DB_NAME config value
    - Add a Login: DB_USER and DB_PASSWD values
    - Assign Rights: the corresponding previous values and leave privileges as empty

- `DB_HOST`: MariaDB host name (default: `core-mariadb`)
- `DB_NAME`: Database name (default: `romm`)
- `DB_USER`: Database user (default: `romm-user`)
- `DB_PASSWD`: Database password

### Application Settings

- `ROMM_AUTH_SECRET_KEY`: Secret key for authentication. Generate with: `openssl rand -hex 32` if you leave it empty it will auto generate one


### Folders

Locations for RomM folders. Possible root folders: /config /media /share
Dont put / at the end of the paths.

- `library`: Path to your game library directory (e.g., `/media/romm`)
- `assets`: Path for uploaded saves, states, etc. (e.g., `/config`)
- `config`: Path where config.yml is stored (e.g., `/config`)
- `resources`:Resources fetched from IGDB (e.g., `/media/romm`)


### [Futher configurations](https://docs.romm.app/latest/Getting-Started/Environment-Variables/)

### Example Configuration

```yaml
DB_HOST: core-mariadb
DB_NAME: romm
DB_USER: romm-user
DB_PASSWD: secretPassword
library: /media/romm
assets: /config
config: /config
resources: /media/romm
```

## Customization

After the first run, a `custom.sh` file will be created in the addon config folder (`addon_configs/57fef649_romm/custom.sh`). You can edit this file to add custom commands that will be executed when the addon starts.

## Support

Create an issue on [GitHub](https://github.com/DDanii/HA-Add-ons-by-DDanii/issues/new).
