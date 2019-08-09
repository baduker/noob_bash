#!/bin/bash

: '
This is a simple utility script for moving new scripts to the ~/bin folder.
The moved and renamed (no .sh extension) is ready for use anywhere from the
command line.
'

BASENAME=$(echo "$1" | cut -f 1 -d '.')
cp $1 $BASENAME && chmod +x $BASENAME
mv -uv $BASENAME ~/bin/
echo "Done! File $BASENAME is ready for use!"