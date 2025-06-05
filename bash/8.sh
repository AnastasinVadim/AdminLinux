#!/bin/bash

count=$(env | grep "LC_" | cut -d = -f 2 | sort -u | wc -l)

if [ $count -gt 1 ];
then 
	exit 1
fi
