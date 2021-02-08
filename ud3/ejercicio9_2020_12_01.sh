#!/bin/bash

#Title: ud3/ejercicio9
#Description:
#Author: administrador
#DATE: 01_12_2020

printf "El nombre del script es: $0.\n"
printf "El primer argumento es: $1.\n"
printf "El segundo argumento es: $2.\n"
printf "Todos los argumentos: $*.\n"
printf "Número total de argumentos: $#.\n"
printf "El primer argumento contiene: $(echo $1 | wc -c | awk '{print $1 - 1}') caracteres.\n"
printf "El segundo argumento contiene: $(echo $2 | wc -c | awk '{print $2 - 1}') caracteres.\n"
