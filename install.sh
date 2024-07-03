#!/usr/bin/bash
pushd $DOTFILES
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    echo "stow $folder"
    stow -D $folder
    stow --adopt $folder
    git restore .
done
popd
