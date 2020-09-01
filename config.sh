#!/usr/bin/env bash


CWD=$(pwd)

#usa-se o sed pra modificar o adaptador da conexão
if [ ! -d ~/.config/conky ]; then
    mkdir ~/.config/conky
fi

#cria link se ele não existir
if [ ! -e ~/.config/conky/conky.conf ]; then
	ln -s $CWD/.config/conky/conky.conf ~/.config/conky/conky.conf
fi

#Modifica a placa wireless particular ao meu caso
sed -i 's/wlx409bcd9656af/wlp18s0b1/g' $CWD/.config/conky/conky.conf
