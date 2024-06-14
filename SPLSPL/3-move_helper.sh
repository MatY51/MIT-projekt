#!/bin/zsh
# Soubor:  move_helper.sh
# Datum:   10.12.2023 16:43
# Autor:   Marek Nožka, marek <@T> tlapicka <dot> net
# Licence: GNU/GPL 
# Úloha: 
############################################################

cd $(dirname $0)

if [ -z $1 ]; then
    print USE:
    print "    $(basename $0) src/stm8s_periferie.c"
    exit 1
fi

filename=$1
basename=$(basename $filename .c)


if ls ${basename}_?*.c &>/dev/null; then

    if [[ -f pointer ]]; then
        mv -v ${basename}*.h inc
        mv -v ${basename}.c src
        print
        rm pointer
    else
        rm -v $filename
        rm -v ${basename}.c
        print
    fi

    mv -v ${basename}*.c src
    print

else
    print "Soubor není zpracován!!!"
fi
