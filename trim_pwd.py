#!/usr/bin/python


"""
The script trims the working directory in the bash promt for nested
directories and/or long dir names.

Usage:

$ cp trim_pwd.py ~ && mv trim_pwd.py .trim_pwd.py
$ export PROMPT_COMMAND='PS1="$(python ~/.trim_pwd.py)"'

"""

import os
from socket import gethostname


hostname = gethostname()
username = os.environ['USER']
pwd = os.getcwd()
homedir = os.path.expanduser('~')
pwd = pwd.replace(homedir, '~', 1)

if len(pwd) > 33:
    pwd = pwd[:10]+'...'+pwd[-20:] # first 10 chars+last 20 chars

print '[%s@%s:%s] ' % (username, hostname, pwd)