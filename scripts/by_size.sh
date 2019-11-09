#!/bin/bash 

set -o errexit

main () {

if [ $# != 2 ]; then 
  echo "Incorrect number of arguments!" >&2 
  echo "USAGE: sortdirbysize [DIRECTORY] <n of dirs to sort by size>" 
fi

du --block-size=1M --max-depth 1 $1 | sort -rn | head -$2  

}

main "$@"
