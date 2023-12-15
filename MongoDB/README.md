# Home Assistant Add-on: MongoDB

![Supports amd64 Architecture][amd64-shield]

mongodb for Homeassistant OS

## About

**WARNING: Right now it can be considered beta and unstable.**

Example add-on configuration:

```yaml
journal_path: /media/mongodb/journal
```

<br />

### Option: `journal_path`

Journal files are only needed if mongodb is shutted down unexpectedly. To reduce the size of the backup you can move these files to folders what you not backing up (media, share).
Leave it empty for default behaviour. You can futher decrease backup size by disabling logging by adding this to the custom config:
```yaml
setParameter:
  diagnosticDataCollectionEnabled: false
```

Custom configs can be setted in /addon_configs/57fef649_mongodb/mongod.conf

