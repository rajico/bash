#!/bin/bash

#Title: actividadesfunciones
#Description:
#Author: administrador
#DATE: 26_01_2021

opciones=('Opción 1' 'Opción 2' Salir)

function Menu {
	clear
	echo "Menú facilón facilón"
	echo "----------------"
	for i in "${opciones[@]}"
	do
		echo $i
	done
	read -p "Introduce la opción" opcion
}

function Pausa {
	echo "Presiona para continuar"
	read pausa
}

while [ true ]
do
    Menu
    case $opcion in
	1)	echo "Has elegido la opción 1"
		;;
	2)	echo "Has elegido la opción 2"
		;;
	3)	exit
		;;
    esac
    Pausa
done
