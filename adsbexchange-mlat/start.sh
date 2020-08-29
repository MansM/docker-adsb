#!/bin/bash
if [ -z "${BEASTPORT}" ]; then
  echo "ERROR: BEASTPORT environment variable is not set, using default 30005"
  export BEASTPORT=30005
fi

/usr/local/bin/mlat-client \
  --no-udp \
  --input-type beast \
  --input-connect "${BEASTHOST}:${BEASTPORT}" \
  --server "feed.adsbexchange.com:31090" \
  --lat "${LAT}" \
  --lon "${LONG}" \
  --alt "${ALT}" \
  --user ${SITENAME}