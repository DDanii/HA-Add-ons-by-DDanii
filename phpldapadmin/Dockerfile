#############
ARG BUILD_FROM
ARG BUILD_ARCH
ARG BUILD_VERSION

FROM $BUILD_FROM

RUN sed -i '/if \[ ! -S \/dev\/log ]; then rm -f \/dev\/log; fi/d' /container/service/:syslog-ng-core/startup.sh
RUN sed -i '/\/dev\/log/d' /container/service/:syslog-ng-core/assets/config/syslog-ng.conf

LABEL \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION}