#!/bin/bash

source colors.sh

brew install git bash-completion

if [ -f "$HOME/.gitconfig" ]; then
    msg_update ".gitconfig"
    rm ~/.gitconfig
else
    msg_install ".gitconfig"
fi

sudo ln -s $DOTFILES/git/.gitconfig ~/.gitconfig
msg_checking ".gitconfig"

# Git Autocomplete
curl https://raw.githubusercontent.com/git/git/v2.17.1/contrib/completion/git-completion.bash -o ~/.git-completion.bash
