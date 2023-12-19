#!/bin/bash
read -p "Introduce el nombre del fichero para comprobar " fichero

if [[ ! -e $fichero ]]; then
	echo "El fichero $fcihero no existe"
elif [[ -r $fichero ]]; then
	cat $fichero
else
	echo "El fichero $fichero no tiene permisos de lectura "
fi

