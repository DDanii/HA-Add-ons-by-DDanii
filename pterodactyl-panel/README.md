# Home Assistant Add-on: pterodactyl Panel

![Supports amd64 Architecture][amd64-shield]

pterodactyl Panel Gameserver for Homeassistant OS

## About

**WARNING: Right now it can be considered beta and unstable. Don't blame me if your gameservers would be lost etc.**

Pterodactyl® is a free, open-source game server management panel built with PHP, React, and Go. Designed with security in mind, Pterodactyl runs all game servers in isolated Docker containers while exposing a beautiful and intuitive UI to end users.<br />
Stop settling for less. Make game servers a first class citizen on your platform.

## Installation

[![DDanii Homeassistant Addons](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FDDaniiF%2FHA-Add-ons-by-DDani)
<br />
The installation of this add-on is pretty straightforward and not different in comparison to installing any other custom Home Assistant add-on.<br />
Just click the link above or add my repo to the hassio addons repositorys: <https://github.com/DDanii/HA-Add-ons-by-DDanii>

You also need to install the redis addon

## Configuration

The MariaDB Integration is needed before installing this one!

Todo rewrite todo add posibility for different user

Create database pterodactyl and add homeassistant as user with full permissions on it.

**Note**: _Remember to restart the add-on when the configuration is changed._

Example add-on configuration:

```yaml
ssl: false #currently ssl is not supported
certfile: itdoesntmatter_as_ssl_is_set_to_false
keyfile: itdoesntmatter_as_ssl_is_set_to_false
```

<br />

### Option: `ssl`

Not supported yet.

Enables/Disables SSL (HTTPS) on the web interface.

If you need a self-signed certificate, have a look at FaserF's openssl addon: <https://github.com/FaserF/hassio-addons/tree/master/openssl>

**Note**: _The files MUST be stored in `/ssl/`, which is the default_

### Option: `reset_database`

Enables it to reset the database files for pterodactyl. Please not this action can not be undone! Use it with care. Also losing wings data. All wings will need new config file.

## Default Login Credential

todo fix make settable

E-Mail: <admin@example.com>
Username: admin
Password: homeassistant

## Support

Got questions or problems?

You can [open an issue here][issue] GitHub.

## Authors & contributors

The original program is from the pterodactyl Project. For more informatios please visit this page: <https://pterodactyl.io/>

[maintenance-shield]: https://img.shields.io/maintenance/yes/2022.svg
[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[DDanii]: https://github.com/DDanii/
[issue]: https://github.com/DDanii/hassio-addons/issues
