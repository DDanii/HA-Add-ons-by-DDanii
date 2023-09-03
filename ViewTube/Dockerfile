#############
ARG BUILD_FROM
ARG BUILD_ARCH
# hadolint ignore=DL3006
FROM $BUILD_FROM

COPY ./root/ /

RUN chmod a+x /run.sh

ENTRYPOINT [ "/run.sh" ]
