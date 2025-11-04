# Home Assistant Add-on: redis

![Supports amd64 Architecture][amd64-shield]

redis for Homeassistant OS

## About

**WARNING: Right now it can be considered beta and unstable.**

Example add-on configuration:

```yaml
save: 3600 1 300 100 60 10000
```

<br />

### Option: `save`

Save the DB to disk.

save <seconds> <changes> [<seconds> <changes> ...]
Redis will save the DB if the given number of seconds elapsed and it surpassed the given number of write operations against the DB.
Set it empty to disable persistency.
(doc)[https://redis.io/docs/management/config-file/]


## Customization

After the first run in the addon config folder (addon_configs/57fef649__slug_) there will be a custom.sh file in witch you can add your own commands

## Support

Create an issue on [github](https://github.com/DDanii/HA-Add-ons-by-DDanii/issues/new)
