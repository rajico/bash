#!/bin/bash

#Title: comprobarusuario
#Description:
#Author: administrador
#DATE: 02_02_2021

# Provocar una pausa por pantalla
function pausa {
        echo "Pulsa una tecla para continuar..."
        read stop
}

# Comprobamos que el usuario existe
function existe_usuario {
	grep -qi "^$1:" /etc/passwd && return 0
	return 1
}

function get_uid {
	grep -i "^$1:" /etc/passwd | cut -d ':' -f3
}

#opciones=('Opción 1. Comprobar usuario' 'Opción 2. Obtener uid' 'Opción 3. Salir')

function Menu {
        clear
        echo "1 - Saber si un usuario está en el sistema"
	echo "2 - Saber uid"
	echo "3 - Salir"
	echo "Opción: "
	read Eleccion
}

Uid=""
Usuario=""
Eleccion=""

while true
do
    Menu
	if [[ $Eleccion = @(1|2) ]]; then
		echo "Introduzca el nombre de un usuario"
		read Usuario
	fi

	case $Eleccion in
		1) # Llamada a la función
		   # Comprobación del código de retorno de la función ($?)
		   if existe_usuario $Usuario; then
		      echo "El usuario $Usuario existe en el sistema"
		   else
		      echo "El usuario $Usuario no existe en el sistema"
		   fi
		   ;;
		2)
		   if existe_usuario $Usuario; then
		      Uid=$(get_uid $Usuario)
		      echo "El UID del usuario $Usuario es: $Uid"
		   else
		      echo "El usuario $Usuario no existe"
		   fi
		   ;;
		3) exit 0 ;;
	esac
    pausa
done
