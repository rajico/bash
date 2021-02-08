#!/bin/bash

#Title: tipoparametro
#Description: Escribir un script que al pasarle por argumento un parámetro,
#determine si es archivo, directorio, o si el parámetro no existe.
#Author: administrador (Rafael Jiménez Cobos)
#DATE: 22_11_2020

if [[ $# != 1 ]]
then
	printf "Error de formato. Formato: $0 archivo/directorio\n"
fi

if [ -e $1 ]
then
        printf "El parámetro $1 existe.\n"
	if [ -f $1 ]
	then
        	printf "El parámetro $1 es un fichero.\n"
	elif [ -d $1 ]
	then
        	printf "El parámetro $1 es un directorio.\n"
	fi
else
        printf "El parámetro $1 NO existe.\n"
fi
