#!/bin/bash

if [ -f $HOME/.config/broot/conf.hjson ]; then
	mv $HOME/.config/broot/conf.hjson $HOME/.config/broot/conf.hjson.bak
fi
if [ -f $HOME/.config/broot/verbs.hjson ]; then
	mv $HOME/.config/broot/verbs.hjson $HOME/.config/broot/verbs.hjson.bak
fi
if [ -f $HOME/.config/broot/select-folder.hjson ]; then
	mv $HOME/.config/broot/select-folder.hjson $HOME/.config/broot/select-folder.hjson.bak
fi

ln -s $HOME/workspace/dotenv/broot/conf.hjson $HOME/.config/broot/conf.hjson
ln -s $HOME/workspace/dotenv/broot/verbs.hjson $HOME/.config/broot/verbs.hjson
ln -s $HOME/workspace/dotenv/broot/select-folder.hjson $HOME/.config/broot/select-folder.hjson
