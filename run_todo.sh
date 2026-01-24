#!/bin/bash

# Put all TODO statements into 1 "TODO.md" file

# CURRENTLY only works on MACOS
todofile="TODO.md"
SEARCH_DIR="."

cat /dev/null > $todofile

find "$SEARCH_DIR" -type f | while read file_path; do
    # Extract just the filename from the full path
    filename=$(basename "$file_path")
    if [[ $filename != *.md ]]; then
        continue
    fi

    gline=`grep "TODO" $filename`
done

echo "TODO complete."