#!/bin/bash
read -p "Introduce el primer numero: " num1
read -p "Introduce el segundo numero: " num2

if [[ $num1 -gt $num2 ]]; then
    echo "El numero $num1 es mayor que el numero $num2"
elif [[ $num1 -eq $num2 ]]; then
    echo "Los dos numeros son iguales"
else
    echo "El numero $num2 es mayor que el numero $num1"
fi




