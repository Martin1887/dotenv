#!/bin/bash

root_path="$HOME/workspace/dotenv"

cd $root_path/nvim
./install.sh

cd $root_path/zsh
./install.sh

cd $root_path/starship
./install.sh

cd $root_path/wezterm
./install.sh
