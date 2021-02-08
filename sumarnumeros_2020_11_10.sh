#!/bin/bash

#Title: sumarnumeros
#Description:
#Author: administrador
#DATE: 10_11_2020

suma=0
echo "Introduzca un número por línea, ^d para terminar."
while read num
	do
		if [[ "$num" != ([+-])+([0-9]) ]]
	
