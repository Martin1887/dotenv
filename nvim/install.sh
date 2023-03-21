#!/bin/bash

# backup previous configuration and files
if [ -d $HOME/.config/nvim ]; then
    mv $HOME/.config/nvim $HOME/.config/nvim.bak
fi

if [ -d $HOME/.local/share/nvim ]; then
    mv $HOME/.local/share/nvim $HOME/.local/share/nvim.bak
fi

if [ -d $HOME/.local/state/nvim ]; then
    mv $HOME/.local/state/nvim $HOME/.local/state/nvim.bak
fi

if [ -d $HOME/.cache/nvim ]; then
    mv $HOME/.cache/nvim $HOME/.cache/nvim.bak
fi

ln -s $HOME/workspace/dotenv/nvim $HOME/.config/nvim
