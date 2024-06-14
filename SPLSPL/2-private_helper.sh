#!/bin/zsh
# Soubor:  private_helper.sh
# Datum:   10.12.2023 17:22
# Autor:   Marek Nožka, marek <@T> tlapicka <dot> net
# Licence: GNU/GPL 
# Úloha: 
############################################################

cd $(dirname $0)

if [ -z $1 ]; then
    print USE:
    print "    $(basename $0) 'var1|var2|var3'"
    exit 1
fi

EXP=$1

ag $EXP     stm8s_*.c
ag $EXP -l  stm8s_*.c


private=$(ls stm8s_*.h | head -1)
ag -l $EXP  stm8s_*_*.c | xargs sed -i -e "/#include/a\#include \"${private}\"" 

#vi $private
ag -l $EXP  *private.h stm8s_*.c | xargs vi

touch pointer
