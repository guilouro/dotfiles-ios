source colors.sh

if [ -f "$HOME/.bash_profile" ]; then
    msg_update ".bash_profile"
    rm ~/.bash_profile
else
    msg_install ".bash_profile"
fi

sudo ln -s $DOTFILES/bash/.bash_profile ~/.bash_profile
msg_checking ".bash_profile"


if [ -f "$HOME/.bash_prompt" ]; then
    msg_update ".bash_prompt"
    rm ~/.bash_prompt
else
    msg_install ".bash_prompt"
fi

sudo ln -s $DOTFILES/bash/.bash_prompt ~/.bash_prompt
msg_checking ".bash_prompt"

source ~/.bash_profile
