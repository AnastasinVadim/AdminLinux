#!/bin/bash
if [ ! -d "$1" ]; then
  echo "Ошибка: Путь '$1' не существует."
  exit 1
fi
direct=$(realpath "$1")
start_dir=$(pwd)
cd "$direct"
for dir in */; do
count=$(find "$dir" -maxdepth 1 -type f | wc -l)
echo "$count" > "${start_dir%/}/${dir%/}.txt"
done

