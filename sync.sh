#!/bin/bash
# fork from https://github.com/mathiasbynens/dotfiles/blob/47376/bootstrap.sh

cd "$(dirname "${BASH_SOURCE}")"

git pull

function doIt() {
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "*.sh" --exclude "*.md" -av . ~
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt
else
    read -p "This may overwrite existing files. Are you sure? (y/N)" -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt
    fi
fi

unset doIt
