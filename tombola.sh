#!/bin/bash

#Title: alumnoaleatorio
#Description:
#Author: administrador
#DATE: 02_02_2021

declare A alumnos
readarray -t alumnos <<<$(tail -n +7 a1umnos.txt)
numeroAlumnos=${#alumnos[*]}
ind=$((RANDOM%numeroAlumnos))
clear
echo "A ver a quién le toca hoy el gordo."
echo "====================="
echo "El afortunado sale a la de una..."
sleep 2
echo "A la de dos..."
sleep 2
echo "Y el afortunado de hoy es... ¡"${alumnos[ind]}"!"
echo "¡Enhorabuena crack!"
