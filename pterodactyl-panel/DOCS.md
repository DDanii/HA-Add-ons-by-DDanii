# wings on home assistant os with portainer
todo scratch for final doc

image: ccarney16/pterodactyl-daemon

ports: 2022 8088\
can be diferent but must mach everywhere

working dir: /var/lib/pterodactyl

![image](./pictures/step1.png)


volumes tab: all binds\
/var/run/docker.sock -> /var/run/docker.sock
\
/mnt/data/supervisor/share -> /mnt/data/supervisor/share
\
/etc/pterodactyl/config.yml -> /mnt/data/supervisor/share/addons_config/pterodactyl/config.yml
\
you can place the configfile elsewhere ofcourse


![image](./pictures/volumes.png)

## runtime tab turn on privileged mode

![image](./pictures/priviledge.png)

## if you want it to start automaticly choose unless stopped on restart policy tab

![image](./pictures/restart.png)

after you create the config you have to modify the path in it
