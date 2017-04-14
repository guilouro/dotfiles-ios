#!/bin/bash

source colors.sh

brew install bash-completion

if [ -f "$HOME/.gitconfig" ]; then
    msg_update ".gitconfig"
    rm ~/.gitconfig
else
    msg_install ".gitconfig"
fi

sudo ln -s $DOTFILES/git/.gitconfig ~/.gitconfig
msg_checking ".gitconfig"
