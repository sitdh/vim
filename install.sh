#!/bin/bash

ln -fs ~/.vim/vimrc ~/.vimrc

vim +PluginInstall +qall

mkdir ~/.vim/colors
ln -fs ~/.vim/bundle/badwolf/colors/badwolf.vim ~/.vim/colors/badwolf.vim
