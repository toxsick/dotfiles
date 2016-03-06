#!/bin/bash
############################
# This script creates symlinks from the home directory
# to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles
# list of files/folders to symlink in homedir
files=".zsh .zlogin .zshenv .zshrc .tmux.conf .vim .gvim.rc .vimrc .slate.js"

##########

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# initialize submodules (incuding oh-my-zsh)
echo "updating submodules"
git submodule init && git submodule update
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory,
# then create symlinks
for file in $files; do
    echo "Creating symlink to $file in home directory."
    if [ -L ~/$file ] ; then
        rm -f ~/$file
    fi
    ln -s $dir/$file ~/$file
done
echo "...done"
