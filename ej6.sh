#!/bin/bash

read -p "Escribe el numero para la tabla de multiplicar " numero

for (( i=1; i<=10; i++ ))
do
	((resultado=numero*$i))
	echo "$resultado"
done
