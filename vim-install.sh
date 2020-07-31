#!/bin/bash

apt-get install exuberant-ctags ncurses-term python-jinja2 git cscope build-essential cmake vim python3-dev
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vim-script /usr/bin/
cp .vimrc ~/
