ARG BUILD_FROM
ARG BUILD_ARCH
FROM $BUILD_FROM

COPY ./root/ /

RUN chmod a+x /run.sh

ENTRYPOINT [ "/run.sh" ]