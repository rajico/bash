#!/bin/bash

#Title: usuarios_seneca
#Description:
#Author: administrador
#DATE: 14_12_2020

export IFS=","

sed -n 2p /home/administrador/scripting/seneca.csv | while read a b c d e f; do useradd -d /home/$b -s /bin/bash $b; done
