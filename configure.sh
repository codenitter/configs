#!/bin/bash

DOTFILES="tmux nvim"

for dir in $DOTFILES; do
  if [ -d "$dir" ]; then
    echo "> stowing: $dir"
    stow -t $HOME -D $dir
    stow -v -t $HOME $dir
  fi
done
