#!/bin/bash

if [ -f $HOME/.config/gitui/key_bindings.ron ]; then
	mv $HOME/.config/gitui/key_bindings.ron $HOME/.config/gitui/key_bindings.ron.bak
fi

ln -s $HOME/workspace/dotenv/gitui/key_bindings.ron $HOME/.config/gitui/key_bindings.ron
