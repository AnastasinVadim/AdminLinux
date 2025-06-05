#!/bin/bash
for file in "$@"
do
	if [ ! -f "$file" ]
	then
		echo "$file => not found"
	else
		lines=$(wc -l < "$file")
		echo "$file => $lines"
	fi
done

