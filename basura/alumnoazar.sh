#!/bin/bash

#Title: alumnoaleatorio
#Description:
#Author: administrador
#DATE: 02_02_2021

declare A alumnos
readarray -t alumnos <<<$(tail -n +7 alumnado.txt)
numeroAlumnos=${#alumnos[*]}
ind=$((RANDOM%numeroAlumnos))
clear
echo "EL ALUMNO ELEGIDO ES:"
echo "====================="
echo ${alumnos[ind]}
