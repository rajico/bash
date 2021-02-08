#!/bin/bash

#Title: funcionmensaje
#Description:
#Author: administrador
#DATE: 02_02_2021

#Paso de parámetros...

#Función para probar el ámbito de las variables.
#function mensaje {
#	mensaje=$1
#	echo $mensaje
#}

#mensaje "Hola mundo"
#mensaje "Hello World"

function mensaje {
	if [ $# != 1  ];
	then
		echo "Debes introducir un parámetro"
	fi
	mensaje=$1
	echo $mensaje
}

mensaje "Hola mundo"
mensaje "Hello World"
