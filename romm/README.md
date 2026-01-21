# Home Assistant Add-on: RomM

**Note:** This add-on is under development. Expect potential nonfunctionality and data losses.

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fromm%2Fconfig.json)
![Ingress](https://img.shields.io/badge/dynamic/json?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fromm%2Fconfig.json)
![Arch](https://img.shields.io/badge/dynamic/json?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2FDDanii%2FHA-Add-ons-by-DDanii%2Fmaster%2Fromm%2Fconfig.json)

[![Builder](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/builder.yaml)
[![Lint](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml/badge.svg)](https://github.com/DDanii/HA-Add-ons-by-DDanii/actions/workflows/lint.yaml)

## About

todo fix slop

[ROMM](https://romm.app/) is a self-hosted retro ROM manager that helps you organize, manage, and play retro games. It supports multiple metadata providers including IGDB, Screenscraper, RetroAchievements, and SteamGridDB.

## Configuration

You need to put a configuration file in addon_configs/57fef649_romm/config [documentation](https://docs.romm.app/latest/Getting-Started/Configuration-File/)

### Database Settings

- `db_host`: MariaDB host name (default: `romm-db`)
- `db_name`: Database name (default: `romm`)
- `db_user`: Database user (default: `romm-user`)
- `db_passwd`: Database password (leave empty if not required)

### Application Settings

- `romm_auth_secret_key`: Secret key for authentication. Generate with: `openssl rand -hex 32`

### Metadata Providers

These are the recommended metadata providers for ROMM:

- `screenscraper_user`: Screenscraper username ([Documentation](https://docs.romm.app/latest/Getting-Started/Metadata-Providers/#screenscraper))
- `screenscraper_password`: Screenscraper password
- `retroachievements_api_key`: RetroAchievements API key ([Documentation](https://docs.romm.app/latest/Getting-Started/Metadata-Providers/#retroachievements))
- `steamgriddb_api_key`: SteamGridDB API key ([Documentation](https://docs.romm.app/latest/Getting-Started/Metadata-Providers/#steamgriddb))
- `hasheous_api_enabled`: Enable Hasheous API (default: `true`) ([Documentation](https://docs.romm.app/latest/Getting-Started/Metadata-Providers/#hasheous))

### Volume Paths

- `library_path`: Path to your game library directory (e.g., `/share/games/roms`)
- `assets_path`: Path for uploaded saves, states, etc. (e.g., `/share/romm/assets`)
- `config_path`: Path where config.yml is stored (e.g., `/share/romm/config`)

For folder structure details, see the [ROMM Folder Structure Documentation](https://docs.romm.app/latest/Getting-Started/Folder-Structure/).

### Example Configuration

```yaml
ssl: false
db_host: romm-db
db_name: romm
db_user: romm-user
db_passwd: "your-secure-password"
romm_auth_secret_key: "your-generated-key-from-openssl-rand-hex-32"
screenscraper_user: "your-username"
screenscraper_password: "your-password"
retroachievements_api_key: "your-api-key"
steamgriddb_api_key: "your-api-key"
hasheous_api_enabled: true
library_path: /share/games/roms
assets_path: /share/romm/assets
config_path: /share/romm/config
```

## Folders

- `romm_resources`: Resources fetched from IGDB (covers, screenshots, etc.)
- `romm_redis_data`: Cached data for background tasks
- Library path: Your game library (configurable)
- Assets path: Uploaded saves, states, etc. (configurable)
- Config path: Where config.yml is stored (configurable)

## Customization

After the first run, a `custom.sh` file will be created in the addon config folder (`addon_configs/57fef649_romm/custom.sh`). You can edit this file to add custom commands that will be executed when the addon starts.

## Support

Create an issue on [GitHub](https://github.com/DDanii/HA-Add-ons-by-DDanii/issues/new).
