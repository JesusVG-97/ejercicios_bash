#!/bin/bash

let x=1
for ((i=5; i > 0; i--))
do
	for (( j=i; j < 5; j++))
	do
		echo -n "$x"
	done
	echo "$x"
	((x++))
done
