#!/usr/bin/env bash

URL="${1:-https://example.com}"

if curl -fsS --max-time 5 "$URL" > /dev/null; then
    echo "OK: $URL is available"
else
    echo "ERROR: $URL is unavailable"
    exit 1
fi

