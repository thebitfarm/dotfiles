#!/usr/bin/env bash

echo "initializing submodules"
git submodule init
git submodule update

echo "Deleting the old files"
rm ~/.vimrc
rm ~/.zshrc
rm ~/.vim
rm ~/.gvimrc
rm ~/.gitconfig
rm ~/.gitignore
rm ~/.tmux.conf
rm ~/.pip/pip.conf
rm ~/.bashrc
rm ~/.hgrc
rm ~/.githelpers

echo "Symlinking files"
ln -s ~/Data/projects/dotfiles/vimrc ~/.vimrc
ln -s ~/Data/projects/dotfiles/zshrc ~/.zshrc
ln -s ~/Data/projects/dotfiles/vim ~/.vim
ln -s ~/Data/projects/dotfiles/gvimrc ~/.gvimrc
ln -s ~/Data/projects/dotfiles/bashrc ~/.bashrc
ln -s ~/Data/projects/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Data/projects/dotfiles/gitignore ~/.gitignore
ln -s ~/Data/projects/dotfiles/tmux ~/.tmux.conf
ln -s ~/Data/projects/dotfiles/githelpers ~/.githelpers
ln -s ~/Data/projects/dotfiles/hgrc ~/.hgrc
ln -s ~/Data/projects/dotfiles/pip.conf ~/.pip/pip.conf
echo "Updating submodules"
git submodule foreach git pull origin master --recurse-submodules

echo "All done."
