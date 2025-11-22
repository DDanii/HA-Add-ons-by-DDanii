#############
ARG BUILD_FROM
ARG BUILD_ARCH
ARG BUILD_VERSION

FROM $BUILD_FROM

CMD [ "/usr/bin/wings", "--config", "/mnt/data/supervisor/homeassistant/addon_configs/57fef649_pelican-wings/config.yml" ]

LABEL \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION}