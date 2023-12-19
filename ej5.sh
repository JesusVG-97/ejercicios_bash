#!/bin/bash
let x=5

while [[ $x -gt 0 ]]
do
	echo $x
	((x--))
done
