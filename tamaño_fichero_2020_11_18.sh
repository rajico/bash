#!/bin/bash

#Title: tamaño_fichero
#Description:
#Author: Rafael Jiménez Cobos
#DATE: 18_11_2020


#if [[ "$#" != 1  ]]
#then
#        printf "Error de formato. Uso adecuado: $0 num\n"
#        exit 1
#fi

if [ -f $@ ]
then
	printf "$@: Es un fichero regular.\n"
	tamano=$(du $@ | awk '{print $1/1024}')
	printf "Su tamaño es de ${tamano} MB.\n"
elif [ -d $@ ]
then
	printf "$@: Es un directorio.\n"
        tamano=$(du -s $@ | awk '{print $1/1024}')
        printf "Su tamaño es de ${tamano} MB.\n"
else
	printf "El parámetro $@ no es un fichero regular o directorio.\n"
fi

