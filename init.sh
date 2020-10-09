#!/bin/bash

for file in ./initial-dbs/*; do
filename="${file##*/}"
newfilename=$(printf "${filename%.*}".db.json)
cp "$file" "$newfilename"
done