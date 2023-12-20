#!/bin/bash
if [ "$(date +%u)" -eq 7 ]; then
    rm -rf /tmp/*
fi
#En el cron se pone esto --> 0 2 * * 7 /ruta/del/script/ej7.sh
