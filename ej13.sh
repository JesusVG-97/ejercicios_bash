#!/bin/bash

echo "Introduce numeros para sumar (introduce 0 para finalizar):"

suma=0
while true; do
    read -p "Introduce un numero: " numero
    if [ "$numero" -eq 0 ]; then
        break
    else
    ((suma=suma+numero))
    echo "La suma es: $suma"
    fi
done

echo "La suma total es: $suma"
