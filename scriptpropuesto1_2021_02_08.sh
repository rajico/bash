#!/bin/bash

#Title: scriptpropuesto1
#Description:
#Author: administrador
#DATE: 08_02_2021

function pausa {
	echo "Presiona para continuar"
	read pausa
}

function hacer_ping {
	echo "¿A qué IP/host quieres hacer PING?"
	read rping
	ping -c 4 $rping
}

function hacer_nslookup {
	echo "¿A qué IP/host quieres hacer NSLOOKUP?"
	read rns
	nslookup $rns
}

while [ true ]
do

clear

printf "\033[32m COMPROBACIONES DE LA RED \033[0m\n"
echo "##########################################"

echo "Selecciona una opción:"
echo "1. PING"
echo "2. NSLOOKUP"
echo "3. Comprobar fichero /etc/hosts"
echo "4. Comprobar fichero /etc/resolv.conf"
echo "5. Salir"

read respuesta

case $respuesta in
1)	hacer_ping
	;;
2)	hacer_nslookup
	;;
3)	cat /etc/hosts
	;;
4)	cat /etc/resolv.conf
	;;
5)	break
	;;
esac
pausa
done
