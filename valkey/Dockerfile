#############
ARG BUILD_FROM
ARG BUILD_ARCH
ARG BUILD_VERSION

FROM $BUILD_FROM

COPY rootfs/ /

RUN chmod a+x /run.sh

RUN chmod a+x /custom.sh

ENTRYPOINT /run.sh

LABEL \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION}