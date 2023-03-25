#!/bin/bash

if [ -f $HOME/.config/starship.toml ]; then
	mv $HOME/.config/starship.toml $HOME/.config/starship.toml.bak
fi

ln -s $HOME/workspace/dotenv/starship/starship.toml $HOME/.config/starship.toml
