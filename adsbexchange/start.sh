#!/bin/bash
if [ -z "${BEASTPORT}" ]; then
  echo "ERROR: BEASTPORT environment variable is not set, using default 30005"
  export BEASTPORT=30005
fi
echo ${UUID} > /tmp/adsbexchange-uuid

/bin/readsb \
  --net --net-only \
  --net-connector "${BEASTHOST}","${BEASTPORT}",beast_in \
  --net-connector "feed.adsbexchange.com","30005",beast_out \
  --lat "${LAT}" \
  --lon "${LONG}" \
  --uuid /tmp/adsbexchange-uuid