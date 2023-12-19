#!/bin/bash

read -p "Introduce un numero para ver si es par o impar " numero

((resultado=$numero % 2))

if [[ $resultado -eq 0 ]];then
	echo "El numero $numero es par"
else
	echo "El numero $numero es impar"
fi
