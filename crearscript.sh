#!/bin/bash
# Título: crearscript
# Descripción: Script para automatizar la creación inicial de scripts
# Fecha: 20/10/2020
# Autor: rajico

# Comprobación de parámetros

if [[ $# != 1 ]]; then
	echo "Formato no válido, número de caracteres incorrecto." 
	echo "Modo de uso: createscript.sh <nombrescript>"
	exit 1
fi

# Carpeta donde almacenaremos los script. Debe añadirse al PATH
SCRIPT_FOLDER="$HOME/scripting"
SCRIPT_FILE="$SCRIPT_FOLDER/$1_$(date '+%Y_%m_%d').sh"

# Añadir condición (if) para comprobar si existe el fichero o no.

if [ -e $SCRIPT_FILE ]; then
#	echo "El fichero ya existe. No se va a modificar"
#	exit 1
	echo "El fichero ya existe. ¿Desea sobreescribir? (Y/n)"
	read respuesta
#		case $respuesta in
#			y)
#				echo -e "#!/bin/bash\n"	> $SCRIPT_FILE
#				echo '#Title: '$1	>> $SCRIPT_FILE
#				echo '#Description: '	>> $SCRIPT_FILE
#				echo '#Author: '$USER	>> $SCRIPT_FILE
#				echo '#DATE: '$(date '+%d_%m_%Y')	>> $SCRIPT_FILE
#				exit 0
#			;;
#			n)
#				echo "OK. Fichero no modificado"
#			;;
#			*)
#				echo "Opción no válida"
#			;;
#		esac
	if [[ $respuesta != 'Y' ]]; then
		echo "Se canceló la operación"
		exit 1
	fi
fi
# Añadimos la información esencial
echo -e "#!/bin/bash\n"		> $SCRIPT_FILE
echo '#Title: '$1		>> $SCRIPT_FILE
echo '#Description:'		>> $SCRIPT_FILE
echo '#Author: '$USER		>> $SCRIPT_FILE
echo '#DATE: '$(date '+%d_%m_%Y')		>> $SCRIPT_FILE

# Hacemos ejecutable el archivo
chmod +x $SCRIPT_FILE

# Abrimos el archivo con el editor de texto
nano $SCRIPT_FILE
