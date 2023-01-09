ARG BUILD_FROM
FROM ddanii/discordbot-self-radio

ENV \
    S6_BEHAVIOUR_IF_STAGE2_FAILS=2 \
    S6_CMD_WAIT_FOR_SERVICES_MAXTIME=0 \
    S6_CMD_WAIT_FOR_SERVICES=1 \
    S6_READ_ONLY_ROOT=1

COPY rootfs/ /

RUN if [ -d /etc/cont-init.d ]; then chmod -R 755 /etc/cont-init.d; fi && \
    if [ -d /etc/logrotate.d ]; then chmod -R 755 /etc/logrotate.d; fi
