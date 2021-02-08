#!/bin/bash

#Title: nota_academica
#Description:
#Author: administrador (Rafael Jiménez Cobos)
#DATE: 16_11_2020

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

if (( $1>=1 && $1<=4 ))
then
	printf "Suspenso.\n"
elif (( $1>=5 && $1<7 ))
then
	printf "Suficiente.\n"
elif (( $1>=7 && $1<9 ))
then
	printf "Notable.\n"
elif (( $1>=9 && $1<11 ))
then
	printf "Sobresaliente.\n"
else
	printf "Por favor, introduce un número entre el 1 y el 10\n"
fi
