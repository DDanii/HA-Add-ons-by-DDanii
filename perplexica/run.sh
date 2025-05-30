#!/usr/bin/env bash
set -e

# Ensure writable config directory
mkdir -p /data

# If this is the very first start, copy the sample config provided by Perplexica
if [ ! -f /data/config.toml ] && [ -f /app/sample.config.toml ]; then
  echo "[INFO] First run detected — copying default config to /data/config.toml"
  cp /app/sample.config.toml /data/config.toml
fi

# Symlink so that the app picks up the configuration from /data
if [ -f /data/config.toml ]; then
  ln -sf /data/config.toml /app/config.toml
fi

echo "[INFO] Launching Perplexica..."
sleep 60000000
exec /home/perplexica/entrypoint.sh