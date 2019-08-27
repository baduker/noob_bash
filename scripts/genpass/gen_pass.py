#!/usr/bin/env python


import os
import argparse


CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
SPECIAL_CHARS = "!@#$%_"
NUMBERS = "1234567890"
ALL = CHARS + NUMBERS + SPECIAL_CHARS

parser = argparse.ArgumentParser()
parser.add_argument("l", nargs="?", type=int, \
                    help="Password length.", default=8)
args = parser.parse_args()
LENGHT = args.l


def generate_random_password():
    return "".join(ALL[ord(c) % len(ALL)] for c in os.urandom(LENGHT))


print(generate_random_password())
