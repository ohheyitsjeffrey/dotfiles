#!/bin/bash

# This script generates symbolic links to dot files in this directory.

this_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# .vimrc
if ! [ -L $HOME/.vimrc ]; then
  echo "linking .vimrc"
  ln -s $this_dir/vimrc $HOME/.vimrc
else
  echo ".vimrc is already linked."  
fi

# .gvimrc
if ! [ -L $HOME/.gvimrc ]; then
  echo "linking .vimrc"
  ln -s $this_dir/gvimrc $HOME/.gvimrc
else
  echo ".gvimrc is already linked."  
fi

if ! [ -L $HOME/.tmux.conf  ]; then
  echo "linking .tmux.conf"
  ln -s $this_dir/tmux.conf $HOME/.tmux.conf
else
  echo ".tmux.conf is already linked."  
fi


