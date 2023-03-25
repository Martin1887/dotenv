#!/bin/bash

if [ -f $HOME/.wezterm.lua ]; then
	mv $HOME/.wezterm.lua $HOME/.wezterm.lua.bak
fi

ln -s $HOME/workspace/dotenv/wezterm/.wezterm.lua $HOME/.wezterm.lua
