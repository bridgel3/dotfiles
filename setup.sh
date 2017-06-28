#!/bin/bash
######################################################
# .setup.sh
# This script creates symlinks from the home directory
# to all files in dotfiles/
######################################################

# Variables
dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc vimrc vim git-prompt.sh tmux.conf"

# Create dotfiles_old in home directory
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# Change to the dotfile directory
echo "Changin to the $dir directory"
cd $dir
echo "...done"

# Move any existing dotfiles to dotfiles_old and create
# symbolic links
ls $dir/vim
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/$olddir/.
    ls $dir/vim
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done
