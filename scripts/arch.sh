#!/bin/bash

FIND_COMPRESSED=$(find . -type f | sed -e 's/.*\.//' | sort | uniq -c | sort -rn | grep -Ei '(deb|tgz|tar|gz|zip)$');

COUNT_LINES=$(echo $FIND_COMPRESSED | wc -l)

if [[ $COUNT_LINES -eq 0 ]]; then
    echo "No archived files found!"
else
    echo "$FIND_COMPRESSED"
fi