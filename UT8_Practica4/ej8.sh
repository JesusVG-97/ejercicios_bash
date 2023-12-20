#!/bin/bash
echo "$(date) $(who | cut -d' ' -f1 | sort -u | wc -l)" >> /tmp/usuarios
#en el cron hay que poner esto --> */2 * * * * /ruta/del/script/ej8.sh
