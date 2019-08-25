#!/bin/bash

FIND_COMPRESSED=$(find . -type f -mtime 14 | sed -e 's/.*\.//' | sort | uniq -c | sort -rn | grep -Ei '(deb|tar|gz|zip)$');
COUNT_LINES=$(echo $FIND_COMPRESSED | wc -l)
DELETE_FILES=$(find . -maxdepth 1 -type f -iname "*.deb" -or -iname "*.zip" -or -iname "*.tar" -or -iname "*.gz" -delete )

if [[ $COUNT_LINES -eq 1 ]]; then
    echo "No archived files found!"
fi

if [[ $COUNT_LINES -gt 1 ]]; then
    echo "Found files that are 14+ days old:"
    echo "$FIND_COMPRESSED"
    echo "Would you like to remove them? [Y/N]"
    read ANSWER
    if [[ $ANSWER = "y" ]]; then
        echo "$(echo $DELETE_FILES)"
    elif [[ $ANSWER = "n" ]]; then
        echo "No files have been removed!"
    fi  
fi
