#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <fichero_original> <nombre_copia>"
    exit 1
fi
fichero_original="$1"
nombre_copia="$2"
if [ ! -f "$fichero_original" ]; then
    echo "Error: El primer parámetro no es un archivo ordinario."
    exit 1
fi
if [ -e "$nombre_copia" ]; then
    echo "Error: Ya existe un identificador (archivo, directorio, etc.) con el nombre $nombre_copia."
    exit 1
fi
cp "$fichero_original" "$nombre_copia"
echo "Copia de $fichero_original creada con el nombre $nombre_copia."
