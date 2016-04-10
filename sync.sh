#!/usr/bin/env bash

cd ~/dotfiles

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  rsync -avh --no-perms symlinks/ ~
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo ""
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    rsync -avh --no-perms symlinks/ ~
  fi
fi
