ARG BUILD_FROM
FROM $BUILD_FROM

ENV \
    S6_BEHAVIOUR_IF_STAGE2_FAILS=2 \
    S6_CMD_WAIT_FOR_SERVICES_MAXTIME=0 \
    S6_CMD_WAIT_FOR_SERVICES=1 \
    S6_READ_ONLY_ROOT=1

COPY rootfs/ /

RUN if [ -d /etc/cont-init.d ]; then chmod -R 755 /etc/cont-init.d; fi && \
    if [ -d /etc/logrotate.d ]; then chmod -R 755 /etc/logrotate.d; fi && \
    if [ -d /etc/cont-init.d/20-set-envs ]; then chmod -R 755 /etc/cont-init.d/20-set-envs; fi
    
RUN apk add jq
    
RUN mkdir -p /tmp/bashio && \
    curl -f -L -s -S "https://github.com/hassio-addons/bashio/archive/v0.14.3.tar.gz" | \
    tar -xzf - --strip 1 -C /tmp/bashio && \
    mv /tmp/bashio/lib /usr/lib/bashio && \
    ln -s /usr/lib/bashio/bashio /usr/bin/bashio && \
    rm -rf /tmp/bashio \
    \
    && curl -L -s -o /usr/bin/tempio \
        "https://github.com/home-assistant/tempio/releases/download/2021.09.0/tempio_${BUILD_ARCH}" \
    && chmod a+x /usr/bin/tempio
