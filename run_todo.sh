#!/bin/bash

# Put all TODO statements into 1 "TODO.md" file

# CURRENTLY only works on MACOS
todofile="TODO.md"
SEARCH_DIR="."

cat /dev/null > $todofile

echo "# TODO" >> $todofile
echo "" >> $todofile
echo "Run \`run_todo.sh\` to automatically find any current TODO statements" >> $todofile
echo "" >> $todofile

find "$SEARCH_DIR" -type f | while read file_path; do
    # Extract just the filename from the full path
    filename=$(basename "$file_path")
    if [[ $filename != *.md ]]; then
        continue
    fi
    if [ $filename = $todofile ]; then
        continue
    fi

    gline=`grep "TODO" $filename`
    if [ ! -z "$gline" ]; then
        refn=${filename%???} # remove .md
        echo "### [$refn](./$filename): " >> $todofile
        echo $gline >> $todofile
        echo "" >> $todofile
    fi
done

echo "TODO complete."