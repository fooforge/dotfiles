#!/bin/sh

if [ -f ~/.bash_profile ]; then
  mv ~/.bash_profile ~/.bash_profile.bak
  ln -s ~/.dotfiles/shell/.bash_profile ~/.bash_profile
fi

if [ -f ~/.gitconfig ]; then
  mv ~/.gitconfig ~/.gitconfig.bak
  ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
fi

if [ -f ~/.gitignore ]; then
  mv ~/.gitignore ~/.gitignore.bak
  ln -s ~/.dotfiles/.gitignore ~/.gitignore
fi
