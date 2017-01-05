#!/usr/bin/env bash

# Install (make symbolic links)

echo "Start installation"

# list of files which should be ignored
IGNORE_DOTS=". .. .git .gitignore"

# Create symbolic links for each dot file in the root directory.
for file in .*
do
    if echo $IGNORE_DOTS | tr " " "\n" | grep -q -e "^$file$"; then
        continue
    fi
    echo $file
done
