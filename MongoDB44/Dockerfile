ARG BUILD_FROM
ARG BUILD_ARCH
FROM $BUILD_FROM

RUN apt-get update; \
    apt-get install -y jq bash wget tar curl

RUN mkdir -p /tmp/bashio && \
    wget -q -O - "https://github.com/hassio-addons/bashio/archive/v0.14.3.tar.gz" | \
    tar -xzf - --strip 1 -C /tmp/bashio && \
    mv /tmp/bashio/lib /usr/lib/bashio && \
    ln -s /usr/lib/bashio/bashio /usr/bin/bashio && \
    rm -rf /tmp/bashio \
    \
    && wget -q -O /usr/bin/tempio \
    "https://github.com/home-assistant/tempio/releases/download/2021.09.0/tempio_amd64" \
    && chmod a+x /usr/bin/tempio


COPY rootfs/ /

RUN chmod a+x /run.sh

ENTRYPOINT [ "/run.sh" ]
