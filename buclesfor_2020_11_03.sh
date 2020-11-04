#!/bin/bash

#Title: buclesfor
#Description:
#Author: administrador
#DATE: 03_11_2020

#for $var in val1 val2 vla3
#do
#	comando
#done
#for $var in 'comando'
#do
#	comando
#done
#for $var in *C
#for $var in $*

#for despegue in 4 3 2 1 "Fuego!!"
#do
#	echo $despegue
#done

#for tablados in 1 2 3 4 5 6 7 8 9 10
#do
#	echo "2 * "$tablados" = "$i
#done

read numero
for i in 1 2 3 4 5 6 7 8 9 10
do let resultado=($i * $numero)
	echo $resultado
done
