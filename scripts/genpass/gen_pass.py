#!/usr/bin/env python

import os


CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
SPECIAL_CHARS = "!@#$%_"
NUMBERS = "1234567890"
ALL = CHARS + NUMBERS + SPECIAL_CHARS
LENGHT = 8


def generate_random_password():
    return "".join(ALL[ord(c) % len(ALL)] for c in os.urandom(LENGHT))


print(generate_random_password())