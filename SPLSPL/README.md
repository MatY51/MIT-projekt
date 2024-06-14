SPLit SPL
================

* Base on [SPL](https://www.st.com/en/embedded-software/stsw-stm8069.html)
    version V2.3.0 dated 16-June-2017.
* Patched with [STM8-SPL_SDCC_patch](https://github.com/gicking/STM8-SPL_SDCC_patch).
* All C files were split into one function per file, so as to allow SDCC linker
    to do dead code elimination -- like
    [STM8-SPL-SDCC library](https://github.com/bschwand/STM8-SPL-SDCC).
* Created for my [STM8S toolchain](https://gitlab.com/spseol/mit-no/STM8S-toolchain).


Jak na to?
==================

1-split_helper.py
------------------------

`./1-split_helper.py src/stm8s_clk.c`

Rozdělí modul s funkcemi tak, že v každém souboru je jedna funkce. 
V původním modulu/souboru zbudou jen proměnné a privátní/statické funkce.


2-private_helper.sh
---------------------------

`./2-private_helper.sh 'CLKPrescTable|HSIDivFactor'`

Hledá ve jednotlivých funkcích/souborech proměnné, aby se poznalo, kam se má
vložit hlavičkový soubor s `*_private.h`. Pokud najde, tak automaticky vepíše
do souboru příslušné `#include ...`.

Toto není potřeba pokud zde takové
proměnné nejsou -- když se tento skript nezavolá bude se `3-move_helper` chovat
malinko jinak (z hlediska hlavičkového souboru).

Je třeba překontrolovat zda proběhlo vše správně... možná bude třeba smazat 
`stm8s_perifery.c` soubor, protože v něm nic není.

3-move_helper.sh
-----------------------------

`./3-move_helper.sh src/stm8s_clk.c`

Soubory se přesunou na správné místo...
