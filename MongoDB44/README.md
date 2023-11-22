# Home Assistant Add-on: MongoDB

![Supports amd64 Architecture][amd64-shield]

mongodb for Homeassistant OS

## About

**WARNING: Right now it can be considered beta and unstable.**

Example add-on configuration:

```yaml
samllfiles: false
```

<br />

### Option: `smallfiles`

Enables a mode where MongoDB uses a smaller default file size. Specifically, --smallfiles reduces the initial size for data files and limits them to 512 megabytes. --smallfiles also reduces the size of each journal files from 1 gigabyte to 128 megabytes.

Use --smallfiles if you have a large number of databases that each holds a small quantity of data. --smallfiles can lead your mongod to create a large number of files, which may affect performance for larger databases.


(docs) [https://www.mongodb.com/docs/v2.2/reference/mongod/#cmdoption-mongod-smallfiles]

