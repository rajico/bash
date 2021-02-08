#!/bin/bash

grep "x:[1-9][0-9][0-9][0-9]" /etc/passwd | (while read TARGET_USER
do
    echo "PROCESAMOS $TARGET_USER"
    echo "------------------------------------"
    USER_NAME="$(echo "$TARGET_USER" | cut -d':' -f5 | cut -d',' -f1 )"
    echo 'USER_NAME="$(echo "$TARGET_USER" | cut -d':' -f5 | cut -d',' -f1 )"'
    echo "USER_NAME=$USER_NAME"
    LDAP_SN="$(echo "$USER_NAME" | awk '{print $2}')"
    echo "LDAP_SN=\"\$(echo \"\$USER_NAME\" | awk '{print \$2}')\""
    echo "LDAP_SN=$LDAP_SN"
    echo "==============================================="
done
)
