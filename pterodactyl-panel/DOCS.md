how to wings on home assistant os with portainer
todo scratch for final doc

ports 2022 8088 can be diferent setted in the panel need to be the same for in and out

working dir /var/lib/pterodactyl

volumes all binds
/var/run/docker.sock /var/run/docker.sock
/mnt/data/supervisor/share /mnt/data/supervisor/share
/etc/pterodactyl/config.yml /mnt/data/supervisor/share/addons_config/pterodactyl/config.yml

runtime -> privileged mode

after config created modifing the path in it
