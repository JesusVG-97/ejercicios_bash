#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Uso: $0 <directorio>"
    exit 1
fi
directorio=$1
if [ ! -e "$directorio" ]; then
    echo "El directorio $directorio no existe."
    exit 1
fi
if [ ! -d "$directorio" ]; then
    echo "$directorio no es un directorio."
    exit 1
fi
archivos=$(find "$directorio" -maxdepth 1 -type f | wc -l)
subdirectorios=$(find "$directorio" -maxdepth 1 -type d | wc -l)
echo "Estadasticas del directorio $directorio:"
echo "Archivos: $archivos"
echo "Subdirectorios: $subdirectorios"
