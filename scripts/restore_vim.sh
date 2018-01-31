#!/bin/bash

# restore vim to however it was set up the last time I ran this script

if ! [ $(which vim) || $(which vim-gnome) || git ]
then
  echo "enter your password so we can install some things"
  sudo apt install vim vim-gnome git
else
  echo "vim, gvim, and git already installed"
fi

# copy vimrc
echo "copying .vimrc to home"
cp .vimrc $HOME/.vimrc

# create backup directories
echo "creating backup directory"
mkdir $HOME/.vim/backup_files/
echo "creating swap directory"
mkdir $HOME/.vim/swap_files/
echo "creating undo directory"
mkdir $HOME/.vim/undo_files/

# set up vundle
echo "installing vundle and plugins"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# todo: gvim settings, more plugins
