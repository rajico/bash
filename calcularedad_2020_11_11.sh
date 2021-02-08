#!/bin/bash

#Title: calcularedad
#Description: Script que nos dice cuantos años tiene x persona tras introducir su fecha de nacimiento
#Author: administrador (Rafael Jiménez Cobos)
#DATE: 11_11_2020

echo "Inserta el día en el que naciste (dd): "
read dia
echo "Inserta el mes en el que naciste (mm): "
read mes
echo "Inserta el año en el que naciste (yyyy): "
read anio

numerico=^[0-9]+$

while [[ ${#dia} != 2 ]]
do
	echo "Inserta el día en el que naciste (dd): "
	read dia
done

while [[ ${#mes} != 2 ]]
do
	echo "Inserta el mes en el que naciste (mm): "
	read mes
done

while [[ ${#anio} != 4 ]]
do
	echo "Inserta el año en el que naciste (yyyy): "
	read anio
done

if ! [[ $dia =~ $numerico ]]
then
	printf "El valor introducido como día de nacimiento no es un número.\n"
	elif ! [[ $mes =~ $numerico ]]
	then
		printf "El valor introducido como mes de nacimiento no es un número.\n"
		elif ! [[ $anio =~ $numerico ]]
		then
			printf "El valor introducido como año de nacimiento no es un número.\n"
		else
			fecha_actual=`date +%s`
			fecha_introducida=`date -d "$anio-$mes-$dia" +'%Y-%m-%d'`
			fecha_introducida_segundos=`date -d "$fecha_introducida" +%s`

			echo "Tienes "$(( ($fecha_actual - $fecha_introducida_segundos) / 31557600  ))" años"
fi
