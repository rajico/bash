#!/bin/bash

#Title: scriptpropuesto2
#Description:
#Author: administrador
#DATE: 08_02_2021

git add *
echo "¿Qué nombre quieres darle al commit?"
read commit
git commit -m "$commit"
git push -u origin master
