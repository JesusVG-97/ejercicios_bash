#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Uso: $0 <directorio>"
    exit 1
fi
directorio=$1
if [ ! -d "$directorio" ]; then
    echo "El directorio $directorio no existe."
    exit 1
fi
echo "Listado de entradas en el directorio $directorio:"
for entrada in "$directorio"/*; do
    if [ -f "$entrada" ]; then
        echo "Archivo: $entrada"
    elif [ -d "$entrada" ]; then
        echo "Directorio: $entrada"
    fi
done
total_entradas=$(find "$directorio" -maxdepth 1 -type f -o -type d | wc -l)
echo "Numero total de entradas procesadas: $total_entradas"
