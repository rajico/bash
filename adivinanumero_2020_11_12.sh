#!/bin/bash

#Title: adivinanumero
#Description: Script que necesita un número como parámetro. Debes adivinar un número al azar entre el 1 y el número introducido
#Author: administrador (Rafael Jiménez Cobos)
#DATE: 12_11_2020

numerico=^[0-9]+$

if ! [[ $1 =~ $numerico ]]
then
        printf "El parámetro $1 no es un número.\n"
	exit 1
fi

if [[ "$#" != 1  ]]
then
	printf "Error de formato. Uso adecuado: $0 num\n"
	exit 1
fi

echo "Debes adivinar un número entre el 1 y el $1"
read respuesta

numero=$(( $RANDOM % $1 + 1 ))
contador=1

while [[ $respuesta != $numero ]]
do
	let contador=$contador+1
	echo "Debes adivinar un número entre el 1 y el $1"
	read respuesta
done

echo "Has necesitado "$contador" intentos"
