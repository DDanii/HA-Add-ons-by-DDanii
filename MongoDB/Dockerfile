ARG BUILD_FROM
ARG BUILD_ARCH
FROM $BUILD_FROM

COPY rootfs/ /

RUN chmod a+x /run.sh

ENTRYPOINT [ "/run.sh" ]
