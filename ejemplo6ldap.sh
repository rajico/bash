#!/bin/bash
clear
GROUP_IDS=()
grep "x:[1-9][0-9][0-9][0-9]" /etc/passwd | (while read TARGET_USER
do
    echo "PROCESAMOS TARGET_USER: $TARGET_USER"
    echo "----------"
    echo "$TARGET_USER" | cut -d':' -f4  
    #Obtiene el idgroup del usuario, field 4
    GROUP_ID="$(echo "$TARGET_USER" | cut -d':' -f4)"
    #Si el grupo no está en el array añade el array más en nuevo grupo.
    [ ! "$(echo "${GROUP_IDS[@]}" | grep "$GROUP_ID")" ] && GROUP_IDS=("${GROUP_IDS[@]}" "$GROUP_ID")
   
    #Crear un usuario, añadirlo a dos grupos y comprobar salida del script.
    if [ ! "$(echo "${GROUP_IDS[@]}" | grep "$GROUP_ID")" ] 
    then
       echo "no lo encuentra"
    else
       echo "lo encuentra"
    fi
    echo ${GROUP_IDS[@]}
    echo "========="
done
)
