#############
ARG BUILD_FROM="ccarney16/pterodactyl-panel"
ARG BUILD_ARCH
# hadolint ignore=DL3006
FROM $BUILD_FROM

RUN microdnf install -y jq bash wget tar

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

RUN rm /entrypoint.d/00-application-checks.sh
#/entrypoint.d/10-application-checks.sh

COPY ./root/ /

RUN chmod a+x /run.sh

ENTRYPOINT [ "/run.sh" ]
