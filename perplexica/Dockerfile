ARG BUILD_FROM=rqi14/perplexica-app:latest
FROM ${BUILD_FROM}

# Metadata for Home Assistant
LABEL \
  org.opencontainers.image.title="Home Assistant Add‑on: Perplexica" \
  org.opencontainers.image.description="Self‑hosted AI‑powered search engine" \
  io.hass.version="1.0.0" \
  io.hass.type="addon"

# Copy wrapper script that takes care of first‑run config
COPY run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 3000
ENTRYPOINT ["/run.sh"]