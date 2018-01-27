#!/bin/bash

this_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $this_dir/vimrc $HOME/.vimrc
ln -s $this_dir/gvimrc $HOME/.gvimrc
