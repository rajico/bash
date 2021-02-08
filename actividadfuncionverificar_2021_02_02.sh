#!/bin/bash

#Title: actividadfuncionverificar
#Description:
#Author: administrador
#DATE: 02_02_2021

#Función de para probar el ámbito de las variables.
function f1 {
	#Definición de una variable local
	typeset variable_local="Ámbito local"
	#Definición de una variable con ámbito global
	variable_global="Ámbito global"
	#Información de salida
	echo "Desde la función"
	echo $variable_local
	echo $variable_global
}
#Llamada a la función
f1
#Información de salida
echo "Desde fuera de la función"
echo $variable_local
echo $variable_global
