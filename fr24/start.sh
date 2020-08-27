#!/bin/bash
if [ -z "${BEASTPORT}" ]; then
  echo "ERROR: BEASTPORT environment variable is not set, using default 30005"
  export BEASTPORT=30005
fi

{   
  echo receiver="beast-tcp"
  echo fr24key="${FR24KEY}"
  echo host="${BEASTHOST}:${BEASTPORT}"
  echo bs="yes"
  echo raw="yes"
  echo logmode="1"
  echo logpath="/var/log"
  echo mlat="${MLAT}"
  echo mlat-without-gps="${MLAT}"
} > /etc/fr24feed.ini

/usr/bin/fr24feed