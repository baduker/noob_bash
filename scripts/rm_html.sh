#!/bin/bash

HTML_FILE_COUNT=$(find . -maxdepth 1 -type f -name "*.html" | wc -l)
DELETE_HTML=$(find . -maxdepth 1 -type f -name "*.html" -delete)

echo -n "$DELETE_HTML"
echo "Removed $HTML_FILE_COUNT file(s) with .html extension."