#!/bin/bash

apt-get install exuberant-ctags ncurses-term python-jinja2 git cscope
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vim-script /usr/bin/
cp .vimrc ~/
git clone https://github.com/morhetz/gruvbox.git
mkdir -p ~/.vim/colors/
cp ./gruvbox/colors/gruvbox.vim ~/.vim/colors/
