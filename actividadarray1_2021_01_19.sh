#!/bin/bash

#Title: actividadarray1
#Description:
#Author: administrador
#DATE: 19_01_2021

# Manejo básico de arrays. Operaciones básicas.
clear

# Definición de un array con los nombres de la semana
diasSemana=(Lunes Martes Miercoles Jueves Viernes Sabado Domingo)

# Mostramos los nombres de la semana.
echo ${diasSemana[*]}
echo ${diasSemana[@]}

echo "-----------------"

# La opción -a permite crear array indexado.
declare -a numerosPares=(2 4 6 8 10)
echo ${numerosPares[@]}

echo "-----------------"

# Array con las letras mayúsculas y minúsculas. Uso de rangos.
declare -a letras=({A..Z} {a..z})
echo ${letras[@]}

echo "-----------------"

# Array que almacene nombres de S.O. pero con espacios en blanco
declare -a sistemas=('Windows 10' 'Ubuntu 20.04' 'Windows 7')
echo ${sistemas[@]}

echo "-----------------"

# Array definido asignando directamente sus valores.
vocales[0]=a
vocales[1]=e
vocales[2]=i
vocales[3]=o
vocales[4]=u
echo ${vocales[*]}

contador=0
for i in "${vocales[@]}"
do
	#echo $i
	echo "Vocal $contador: $i"
	let contador=$contador+1
done

echo $contador

contador=0
for i in "${vocales[*]}"
do
	#echo $i
	echo "Vocal $contador: $i"
	let contador=$contador+1
done

echo $contador

echo ${#vocales[@]}
echo "-----------------"
# Array días de la semana.
# Longitud total y longitud de cada uno de ellos

echo "Longitud total - Array días de la semana"
echo ${#diasSemana[@]}
echo "-----------------"
echo "Longitud de cada uno de ellos"
contador=0
#for i in ${#diasSemana[*]} do echo "$i->${#i}" 
for i in ${diasSemana[@]}
do
        echo $i "-" ${#diasSemana[$contador]}
	let contador=$contador+1
done
echo "-----------------"
numerosPares=("${numerosPares[@]}" 12)
numerosPares+=(14)
echo ${numerosPares[*]}

echo "-----------------"

doble=
for i in ${numerosPares[*]}
do
	let doble=$i*2
	echo $doble
done
echo "-----------------"
# Declarar un array asociativo con puertas de enlace y direcciones
# de host

declare -A direcciones
direcciones=([gateway]="192.168.0.1" [host1]="192.168.0.10" [host2]="192.168.0.11")

for i in ${!direcciones[*]}
do
	#echo $i
	echo $i "-" ${direcciones[$i]}
done

#echo ${direcciones[gateway]}
echo "-----------------"
# Modificamos valor
direcciones[gateway]="192.168.0.254"

#Añadimos valor
direcciones+=([host3]="192.168.0.12")

for i in ${!direcciones[*]}
do
        #echo $i
        echo $i "-" ${direcciones[$i]}
done

echo "-----------------"

