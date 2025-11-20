#!/usr/bin/bashio
#write your custom commands befor the exec command


exec /usr/bin/tini -s /usr/local/bin/my_init -- --no-main-command
