#!/bin/bash
fijo=50
while [[ $numero -ne $fijo ]]
do
	read -p "Introduce un numero del 1 al 100 " numero
	if [[ $numero -ne 0 ]]; then
		if [[ $numero -eq $fijo ]]; then
			echo "Enhorabuena, has adivinado, el numero era $fijo"
			break;
		elif [[ $numero -lt 0 ]]; then
			echo "El numero tiene que ser mayor que 0"
		elif [[ $numero -gt 100 ]];then
			echo "Te pasaste, porfavor introduce un numero inferior a 100"
		elif [[ $numero -lt $fijo ]];then
			echo "El numero es mayor"
		else
			echo "El numero es menor"
		fi
	else
		echo "Te rendiste"
		exit;
	fi
done
