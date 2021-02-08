#!/bin/bash

#Title: reinicio
#Description: Escribe un script que al ejecutarlo como root reinicie el equipo después de 1 minuto.
#Si no se ejecuta como root indicará un mensaje de que el script no se puede ejecutar.
#Author: administrador (Rafael Jiménez Cobos)
#DATE: 22_11_2020

if [ ! -z "$SUDO_USER" ]; then
	echo "Se va a reiniciar el equipo en 1 minuto."
	shutdown -r +1
else
	echo "Este script no se puede ejecutar debido a que no ha sido utilizado con sudo."
fi
