#!/usr/bin/env bash


CWD=$(pwd)

#usa-se o sed pra modificar o adaptador da conexão
if [ ! -e ~/.config/conky ]; then
    mkdir ~/.config/conky
fi

cp $CWD/.config/conky/conky.conf ~/.config/conky

sed -i 's/wlx409bcd9656af/wlp18s0b1/g' ~/.config/conky/conky.conf

