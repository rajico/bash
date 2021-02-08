#!/bin/bash

#Title: existe_usuario
#Description: Comprueba si existe el usuario pasado como argumento.
#Author: administrador (Rafael Jiménez Cobos)
#DATE: 16_11_2020

if [[ $# -ne 1 ]]; then
	echo "Número de argumentos inválido."
	echo "Uso: $0 nombre_usuario"
	exit 1
fi

if grep -q "^$1:" /etc/passwd; then
	echo "El usuario $1 existe."
else
	echo "El usuario $1 no existe."
fi
exit 0
