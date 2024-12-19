#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error: Both parameters are required."
    exit 1
fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a valid directory."
    exit 1
fi

file_count=0
matching_lines_count=0

while IFS= read -r file; do
    ((file_count++))

    matching_lines=$(grep -c "$searchstr" "$file")

    ((matching_lines_count += matching_lines))
done < <(find "$filesdir" -type f)

echo "The number of files are $file_count and the number of matching lines are $matching_lines_count"

