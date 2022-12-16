ARG BUILD_FROM
FROM ddanii/discordbot-self-radio

ENV \
    S6_BEHAVIOUR_IF_STAGE2_FAILS=2 \
    S6_CMD_WAIT_FOR_SERVICES_MAXTIME=0 \
    S6_CMD_WAIT_FOR_SERVICES=1
    
COPY rootfs /
RUN /etc/cont-init.d/env.sh
