#!/bin/bash

get_size() {
    local path="$1"
    local size=$(du -hs "$path")
    echo $size
}

items=$(ls -A)

for item in $items; do
    size=$(get_size "$item")
    echo -e "$size\t$item"
done | sort -rh -k1,1