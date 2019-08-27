#!/bin/bash

# Invokes a python script that generates a random 8-char long password

# If you don't have xclip just do: sudo apt-get install xclip

$python ./gen_pass.py | xclip -selection clipboard