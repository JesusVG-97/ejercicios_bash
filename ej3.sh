#!/bin/bash
read -p "Introduce el parametro existente " fichero

if [[ -e $fichero  ]]; then
	echo "el fichero $fichero existe"
else
	echo "el fichero $fichero no existe"
fi

