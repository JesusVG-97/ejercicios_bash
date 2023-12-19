#!/bin/bash
read -p "Introduce un numero entero: " numero

i=2
primo=true

while [[ $i -lt $numero ]]
do
	if [[ $((numero % i)) -eq 0 ]];then
		primo=false
		break
	fi
	((i++))
done
if $primo; then
	echo "$numero es primo"
else
	echo "$numero no es primo"
fi
