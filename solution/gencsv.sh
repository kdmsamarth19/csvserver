#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <start_index> <end_index>"
    exit 1
fi

start=$1
end=$2
output_file="inputFile"

rm -f "$output_file"

for ((i = start; i <= end; i++)); do
    echo "$i, $((RANDOM % 1000))" >> "$output_file"
done

echo "Generated $((end - start + 1)) entries in $output_file"
