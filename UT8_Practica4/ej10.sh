#!/bin/bash
fecha=$(date '+%Y%m%d_%H%M%S')
dia_semana=$(date '+%u') 
if [ "$dia_semana" -eq 7 ]; then
    tar czf /copia_seguridad/completa/copia_completa_$fecha.tgz /home /etc /root
else
    carpeta_destino="/copia_seguridad_incremental/$(date '+%m_%d_%Y')"
    mkdir -p "$carpeta_destino"
    tar czf "$carpeta_destino/copia_diaria_$fecha.tgz" /etc
fi
date '+%H:%M:%S' > /copia_seguridad/fecha.txt
