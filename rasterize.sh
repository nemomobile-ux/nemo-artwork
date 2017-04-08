#!/bin/bash

while [ $# -gt 0 ]; do
    file=$1
    newfile=`echo "$file" | sed 's/\.\w*$/.png/'`
    inkscape -f "$file" -e "$newfile" -d 96 -y 0.0
    shift
done
