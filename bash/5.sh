#!/bin/bash
log_dir="/var/log"
for file in "$log_dir"/*.log; do
last_line=$(tail -n 1 "$file")
echo "Файл: $file" >> logs.log
echo "$last_line" >> logs.log
done

