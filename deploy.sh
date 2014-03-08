#!/bin/sh

if [ -f ~/.bash_profile ]; then
  mv ~/.bash_profile ~/.bash_profile.bak
fi

if [ -f ~/.gitconfig ]; then
  mv ~/.gitconfig ~/.gitconfig.bak
fi

if [ -f ~/.gitignore ]; then
  mv ~/.gitignore ~/.gitignore.bak
fi

ln -s ~/.dotfiles/shell/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.gitignore ~/.gitignore
