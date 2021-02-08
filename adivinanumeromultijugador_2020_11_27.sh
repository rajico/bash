#!/bin/bash

#Title: adivinanumeromultijugador
#Description:
#Author: Rafael Jiménez Cobos
#DATE: 27_11_2020

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

numero=$(( $RANDOM % $1 + 1 ))
contador1=1
contador2=1

while :
do
	echo "Es el turno del jugador 1:"
	read respuesta1
	if [[ $respuesta1 != $numero ]]
	then
		let contador1=$contador1+1
		echo "Error. Número equivocado"
		if [[ $respuesta1 -lt $numero ]]
		then
			printf "El número es menor.\n"
		else
			printf "El número es mayor.\n"
		fi
	else
		echo "Ganador: Jugador 1. Ha necesitado $contador1 intentos"
		break
	fi

	echo "Es el turno del jugador 2:"
	read respuesta2
        if [[ $respuesta2 != $numero ]]
        then
                let contador2=$contador2+1
                echo "Error. Número equivocado"
		if [[ $respuesta2 -lt $numero ]]
		then
			printf "El número es menor.\n"
		else
			printf "El número es mayor.\n"
		fi
        else
                echo "Ganador: Jugador 2. Ha necesitado $contador2 intentos"
                break
        fi
done
