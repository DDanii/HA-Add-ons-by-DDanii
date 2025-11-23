#############
ARG BUILD_FROM
ARG BUILD_ARCH
ARG BUILD_VERSION

FROM $BUILD_FROM

RUN mkdir -p /etc/pelican /var/run/wings
RUN curl -L -o /usr/local/bin/wings "https://github.com/pelican-dev/wings/releases/latest/download/wings_linux_$([[ "$(uname -m)" == "x86_64" ]] && echo "amd64" || echo "arm64")"
RUN chmod u+x /usr/local/bin/wings

CMD [ "wings", "--config", "/mnt/data/supervisor/addon_configs/57fef649_pelican-wings/config.yml" ]

LABEL \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION}