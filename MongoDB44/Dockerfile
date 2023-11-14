ARG BUILD_FROM
ARG BUILD_ARCH
FROM $BUILD_FROM

RUN mkdir -p /config/addons_config/mongodb44/db \
    mkdir -p /config/addons_config/mongodb44/configdb \
    chown -R mongodb:mongodb /config/addons_config/mongodb44/db /config/addons_config/mongodb44/configdb \
    usermod -m -d /config/addons_config/mongodb44/db mongodb

ENV HOME /config/addons_config/mongodb44/db
