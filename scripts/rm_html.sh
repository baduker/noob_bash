#!/bin/bash

HTML_FILE_COUNT=$(find . -maxdepth 1 -type f -name "*.html" | wc -l)

echo "Remove $HTML_FILE_COUNT file(s) with .html extension (yes / no)?"

echo -n "Answer: "
read ANSWER

if [[ $ANSWER = "yes" ]]; then
    echo "$(find . -maxdepth 1 -type f -name "*.html" -delete)"
    echo "$HTML_FILE_COUNT files have been removed!"
elif [[ $ANSWER = "no" ]]; then
    echo "No file has been removed!"
else
    echo "Unknown command!"
fi