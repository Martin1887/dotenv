#!/bin/bash

if [ -d $HOME/.config/zsh ]; then
    mv $HOME/.config/zsh $HOME/.config/zsh.bak
fi

mkdir $HOME/.config/zsh

ln -s $HOME/workspace/dotenv/zsh/.zshrc $HOME/.config/zsh/.zshrc
ln -s $HOME/.config/zsh/.zshrc $HOME/.zshrc
ln -s $HOME/workspace/dotenv/zsh/external $HOME/.config/zsh/external
