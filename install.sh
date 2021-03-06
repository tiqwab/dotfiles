#!/usr/bin/env bash
# Install (make symbolic links)

# list of files which should be ignored
IGNORE_DOTS=". .. .git .gitignore"

echo "=================="
echo "Start installation"
echo "=================="

pushd ~/dotfiles > /dev/null

# Create symbolic links for each dot file and directories in the root directory.
for file in .*
do
    # if [ -d $file ] ; then
    #     continue
    # fi
    if echo $IGNORE_DOTS | tr " " "\n" | grep -q -e "^$file$"; then
        continue
    fi

    echo "link ~/dotfiles/$file to ~/$file"
    ln -sf ~/dotfiles/$file ~/$file
done

popd > /dev/null
