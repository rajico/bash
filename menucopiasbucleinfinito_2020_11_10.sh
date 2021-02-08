#!/bin/bash

#Title: menucopias
#Description:
#Author: administrador
#DATE: 03_11_2020

clear

echo "- 1 - Copia de seguridad"
echo "- 2 - Restaurar"
echo "- 3 - Fin"
echo "Su elección: "
read respuesta

case $respuesta in
	1)
		echo "Realizar copia de seguridad."
	;;
	2)
		echo "Restaurar copia de seguridad."
	;;
	3)
		echo "Salir."
	;;
	*)
		echo "No es una opción de las planteadas."
	;;
esac

while :
do
	clear
	echo "- 1 - Copia de seguridad"
	echo "- 2 - Restaurar"
	echo "- 3 - Fin"
	echo "Su elección: "
	read respuesta

	case $respuesta in
		1)
			echo "Elección: Copia de seguridad. <Confirmar>\n\c"
		;;
		2)
			echo "Elección: Restaurar copia de seguridad. <Confirmar>\n\c"
		;;
		3)
			echo "Elección: Fin del tratamiento. <Confirmar>\n\c"
			break
		;;
		*)
			echo "No es una opción correcta. <Confirmar>\n\c"
		;;
esac
done
