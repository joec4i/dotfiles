#!/bin/bash

if [ ! -e ~/.vim/bundle/Vundle.vim ]; then
    echo "> Installing Vundle"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "> Installing all configured vim plugins"
vim +PluginInstall +qall
