#!/bin/bash

# Add all the "Refrences" to each .md file

# CURRENTLY only works on MACOS

SEARCH_DIR="."
rm tmp

find "$SEARCH_DIR" -type f | while read file_path; do
    # Extract just the filename from the full path
    filename=$(basename "$file_path")
    if [[ $filename != *.md ]]; then
        continue
    fi

    # Remove all old refrences
    echo "removing $filename refrences"
    sed -n '/### Refrences/q;p' "$filename" > tmp
    perl -0777 -pi -e 's/\n{2,}$/\n/gs' tmp
    cat tmp > "$filename"
done
rm tmp

find "$SEARCH_DIR" -type f | while read file_path; do
    # Extract just the filename from the full path
    filename=$(basename "$file_path")
    if [[ $filename != *.md ]]; then
        continue
    fi
    files_with_match=$(grep -rslF --exclude-dir=".git" --exclude="$filename" "$filename" "$SEARCH_DIR")

    

    # If any files contain this filename, print them
    if [ -n "$files_with_match" ]; then
        echo -e "\n\n" >> $filename
        echo "### Refrences" >> $filename
        for ref in `echo $files_with_match`; do
            echo $ref
            refn=${ref#??}
            refn=${refn%???}
            echo " - [$refn]($ref)" >> $filename
        done
    fi
done

echo "Search complete."