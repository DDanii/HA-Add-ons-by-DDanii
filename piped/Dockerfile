ARG BUILD_ARCH
FROM 1337kavin/piped:latest

COPY ./root/ /

RUN chmod a+x /run.sh

ENTRYPOINT [ "/run.sh" ]
