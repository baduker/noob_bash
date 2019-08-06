#!/bin/bash

echo -n "Type something: "
read input
clear 
echo "$input" | pv -qL 10