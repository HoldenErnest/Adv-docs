#!/bin/bash

# Add all the "Refrences" to each .md file

SEARCH_DIR="."

find "$SEARCH_DIR" -type f | while read file_path; do
    # Extract just the filename from the full path
    filename=$(basename "$file_path")
    if [[ $filename != *.md ]]; then
        continue
    fi

    files_with_match=$(grep -rslF --exclude="\.*" --exclude="$filename" "$filename" "$SEARCH_DIR")

    # 3. If any files contain the filename string, print them
    if [ -n "$files_with_match" ]; then
        echo "--- Filename: '$filename' found within the content of these files: ---"
        echo "$files_with_match"
    fi
done

echo "Search complete."