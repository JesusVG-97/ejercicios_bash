#!/bin/bash
read -p "Introduce el primer numero: " num1
read -p "Introduce el segundo numero: " num2

if [[ -z $num1  || -z $num2 ]]; then
	echo "Porfavor, pasa un numero"
else
	((resultado=$num1+$num2));
	echo "$resultado"
fi
