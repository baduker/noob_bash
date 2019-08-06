#!/bin/bash

# A one-liner uptime with full info

echo "Hostname: $HOSTNAME"
DATE_REGEX="[0-9]{4}-[0-9]{2}-[0-9]{2}"
echo "$(uptime -p) since $(uptime -s | grep -oE "$DATE_REGEX") $(uptime | grep -o load.*)"
