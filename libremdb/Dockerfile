#############
ARG BUILD_ARCH
ARG BUILD_VERSION

FROM ghcr.io/zyachel/libremdb:latest

COPY rootfs/ /

CMD ["/run.js"]

LABEL \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION}
