#############
ARG BUILD_FROM
ARG BUILD_ARCH
ARG BUILD_VERSION

FROM $BUILD_FROM

COPY rootfs/ /

RUN chmod a+x /run.js

ENTRYPOINT /run.js

LABEL \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION}