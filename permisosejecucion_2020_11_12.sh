#!/bin/bash

#Title: permisosejecucion
#Description: Script que asigna el permiso de ejecución a los ficheros regulares o directorios pasados como argumento
#(puede admitir una lista de ficheros).
#Author: administrador (Rafael Jiménez Cobos)
#DATE: 12_11_2020

if [[ $# = 0 ]]
then
	printf "Error de formato. Modo de uso: $0 fichero/directorio1 fichero/directorio2 ...\n"
	exit 1
fi

cont=0

for i in "$@"
do
	let cont=$cont+1
	if [ -f $i ]
	then
		echo "Argumento $cont: $i - Es un fichero regular, permiso añadido"
		chmod +x $i
	elif [ -d $i ]
	then
		echo "Argumento $cont: $i - Es un directorio, permiso añadido"
		chmod +x $i
	fi
done

