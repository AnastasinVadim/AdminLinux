#!/bin/bash

paths=$(echo $PATH | tr ":" "\n")

for path in $paths
do
	if [ -d "$path" ];
	then 
		count=$(find $path -maxdepth 1 -type f | wc -l)
		echo "$path => $count"
	fi
done
