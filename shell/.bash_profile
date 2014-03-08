#!/usr/bin/env bash

if [ -f /usr/bin/uname ]; then
  HOST=$(/usr/bin/uname)
elif [ -f /bin/uname ]; then
  HOST=$(/bin/uname)
fi

# Set my editor and git editor
if [ $HOST == "Darwin" ]; then
  HOME="/Users/fooforge"
  export EDITOR='subl -w'
  export GIT_EDITOR='subl -w'
elif [ $HOST == "Linux" ]; then
  HOME="/home/fooforge"
  export EDITOR='vim'
  export GIT_EDITOR='vim'
fi

HISTSIZE=1024000

# Don't check mail when opening terminal.
unset MAILCHECK

# Load composure
source "$HOME/.dotfiles/shell/composure.sh"

# Load plugins
source "$HOME/.dotfiles/shell/git.plugin.bash"
source "$HOME/.dotfiles/shell/ruby.plugin.bash"

# Load colors first so they can be use in base theme
source "$HOME/.dotfiles/shell/colors.theme.bash"
source "$HOME/.dotfiles/shell/base.theme.bash"
source "$HOME/.dotfiles/shell/bobby.theme.bash"

# Load aliases
source "$HOME/.dotfiles/shell/.bash_aliases"

if [ -f /opt/boxen/env.sh ]; then
  source /opt/boxen/env.sh
fi
