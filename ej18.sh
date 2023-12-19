#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Uso: $0 <nombre_de_usuario>"
    exit 1
fi
nombre_usuario=$1
if id "$nombre_usuario" >/dev/null 2>&1; then
    echo "El usuario $nombre_usuario esta dado de alta en el sistema."
    if who | grep -w "$nombre_usuario" >/dev/null 2>&1; then
        echo "El usuario $nombre_usuario ha iniciado sesion."
    else
        echo "El usuario $nombre_usuario no ha iniciado sesion."
    fi
else
    echo "El usuario $nombre_usuario no esta dado de alta en el sistema."
fi
