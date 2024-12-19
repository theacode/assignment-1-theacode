#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error: Both parameters are required."
    exit 1
fi

writefile="$1"
writestr="$2"

dirpath=$(dirname "$writefile")

if [ ! -d "$dirpath" ]; then
    mkdir -p "$dirpath"
    if [ $? -ne 0 ]; then
        echo "Error: Failed to create the directory path $dirpath."
        exit 1
    fi
fi

echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
    echo "Error: Failed to write to the file $writefile."
    exit 1
fi

exit 0

