#!/usr/bin/env python3
# Soubor:  split_helper.py
# Datum:   09.12.2023 16:42
# Autor:   Marek Nožka, nozka <@t> spseol <d.t> cz
# Licence: GNU/GPL
# Úloha:
############################################################################
from sys import argv
import re
from os.path import basename, splitext

############################################################################

if len(argv) != 2:
    print(f"USE: \n    {argv[0]}src/stm8s_periferie.c\n")
    exit(2)

filename = argv[1]
basename = splitext(basename(filename))[0]

regexp = re.compile(
    r"""(
    ^ / \*+? \s*?                            # začátek doxy-komentáře
    ^ \s+? \* \s+? @brief.*?                 # začátek doxy-komentáře
    ^ \w+? \s+? (\w+?) \s*? \( .+? \) \s*?   # hlavička funkce
    ^{ .*? ^}
    )""",
    flags=re.MULTILINE | re.IGNORECASE | re.DOTALL | re.VERBOSE,
)

inc_exp = re.compile(
    r'((^\#include\s+["<].*?[">]\s+)+)', flags=re.MULTILINE | re.IGNORECASE | re.DOTALL
)

comment_exp = re.compile(
    r"\s*(/\*.+?\*/)", flags=re.MULTILINE | re.IGNORECASE | re.DOTALL
)
white_exp = re.compile(r"^\s*", flags=re.MULTILINE | re.IGNORECASE | re.DOTALL)

with open(argv[1], encoding="latin-1") as f:
    data = f.read()

hdr_match = comment_exp.search(data)
header = hdr_match.group(1)

inc_match = inc_exp.search(data)
include = inc_match.group(1)

while match := regexp.search(data):
    fnc_name = match.group(2)
    fnc_body = match.group(1)

    with open(f"{basename}_{fnc_name}.c", "w") as fff:
        fff.write(header)
        fff.write("\n")
        fff.write(include)
        fff.write("\n\n")
        fff.write(fnc_body)
    data = regexp.sub("", data, count=1)

with open(f"{basename}.c", "w") as fff:
    fff.write(data)
with open(f"{basename}_private.h", "w") as fff:
    fff.write(data)

data = comment_exp.sub("", data)
data = white_exp.sub("", data)
print(data)
