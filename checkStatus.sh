#!/usr/bin/env bash

command_to_execute="$2"

var1=$(find $1)
for x in $var1 
do
eval "$command_to_execute" "$x"
	if [ $? -eq 0 ]; then
		echo "Yes" >> "$3"
	else
		echo "Nope" >> "$3"
	fi
done

