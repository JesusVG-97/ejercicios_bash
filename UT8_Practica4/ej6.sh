#!/bin/bash
echo "$(date '+%T %F') up $(uptime | awk '{print $3,$4,$5,$6,$7}') $(who | tail -n1)" >> /var/log/historial.txt
#En el cron debes añadir lo siguiente --> */10 * * * * /ruta/del/script/ej6.sh
