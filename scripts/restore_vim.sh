#!/bin/bash

# restore vim to however it was set up the last time I ran this script

if ! [ $(which vim) ] || ! [ $(which gvim) ] || ! [ $(which git) ] ; then
  # TODO this should be updated to be run on non-ubuntu systems.
  echo "enter your password so we can install some things"
  sudo apt install vim vim-gnome git
else
  echo "oh good! vim, gvim, and git already installed"
fi

this_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# run script to link dot files if they are not already linked
$this_dir/link_dots.sh

# create directories for backups and swaps and undos
if ! [ -d $HOME/.vim/backup_files/  ]; then
  echo "creating backup directory"
  mkdir $HOME/.vim/backup_files/
fi

if ! [ -d  $HOME/.vim/swap_files/ ]; then
  echo "creating swap directory"
  mkdir $HOME/.vim/swap_files/
fi

if ! [ -d  $HOME/.vim/undo_files/ ]; then
  echo "creating undo directory"
  mkdir $HOME/.vim/undo_files/
fi

# set up vundle
if ! [ -d $HOME/.vim/bundle/Vundle.vim ]; then
  echo "getting vundle"
  git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi

# finally, let vundle do its thing
vim +PluginInstall +qall
