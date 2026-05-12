#############
ARG BUILD_ARCH
ARG BUILD_VERSION

FROM valkey/valkey

COPY rootfs/ /

RUN chmod a+x /run.sh
RUN chmod 777 /valkey.conf
RUN chmod a+x /custom.sh

ENTRYPOINT /run.sh

LABEL \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION}
