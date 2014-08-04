#!/bin/bash

git clone http://github.com/joshfriend/dotvim.git ~/.vim

# Back up old vim config files
mv ~/.vimrc ~/.vimrc.bak
mv ~/.gvimrc ~/.gvimrc.bak

# Set new config files
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

# Get plugins
cd ~/.vim
git submodule update --init

