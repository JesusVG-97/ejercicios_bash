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
    tipo=""
    if [ -f "$entrada" ]; then
        tipo="Archivo regular"
    elif [ -d "$entrada" ]; then
        tipo="Directorio"
    elif [ -L "$entrada" ]; then
        tipo="Enlace simbólico"
    elif [ -b "$entrada" ]; then
        tipo="Archivo especial de bloque"
    elif [ -c "$entrada" ]; then
        tipo="Archivo especial de caracter"
    fi

    echo "$entrada: $tipo"
done
total_entradas=$(find "$directorio" -maxdepth 1 -type f -o -type d -o -type l -o -type b -o -type c | wc -l)
echo "Numero total de entradas procesadas: $total_entradas"
