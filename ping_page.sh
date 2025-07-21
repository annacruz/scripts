#! /bin/bash

URL="https://recipe-finder-purple-snow-5757.fly.dev"

while true; do
  TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
  curl -s "$URL"
  echo "[$TIMESTAMP] Request sent to $URL"
  sleep 30
done
