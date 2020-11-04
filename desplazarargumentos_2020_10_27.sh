#!/bin/bash

#Title: desplazarargumentos
#Description: Desplazar argumentos con shift n
#Author: administrador
#DATE: 27_10_2020

echo "Argumentos: $*"
shift
echo "Argumento: $*"
shift 2
echo "Argumento: $*"
