#!/bin/bash

dir="/var/log"

for path in $dir/*.log
do
        if [ -f "$path" ];
        then
                line=$(tail -1 $path)
                echo "$line" >> logs.log
        fi

done
