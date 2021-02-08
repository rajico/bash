#!/bin/bash

#Title: tamaño_fichero
#Description:
#Author: Rafael Jiménez Cobos
#DATE: 18_11_2020


if [[ $# = 0 ]]
then
        printf "Error de formato. Modo de uso: $0 fichero/directorio1 fichero/directorio2 ...\n"
        exit 1
fi

cont=0

for i in "$@"
do
        let cont=$cont+1
        if [ -f $i ]
        then
                printf "Argumento $cont: $i - Es un fichero regular.\n"
		tamano=$(du $i | awk '{print $i/1024}')
		printf "El tamaño de este archivo es de $tamano MB.\n"
	elif [ -d $i ]
        then
                printf "Argumento $cont: $i - Es un directorio.\n"
                tamano=$(du -s $i | awk '{print $i/1024}')
		printf "El tamaño de este directorio es de $tamano MB.\n"
        else
                printf "El parámetro $i no es un fichero regular o directorio.\n"
        fi
done
total=$(du -c $@ | grep "total" | cut -f1 | awk '{print $i/1024}')
printf "El tamaño total es de $total MB.\n"
