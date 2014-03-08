#!/usr/bin/env bash

HOST=$(/usr/bin/uname)
# Set my editor and git editor

if [ $HOST == "Darwin" ]; then
  export EDITOR='subl -w'
  export GIT_EDITOR='subl -w'
elif [ $HOST == "Linux" ]; then
  export EDITOR='vim'
  export GIT_EDITOR='vim'
fi

HISTSIZE=1024000

# Don't check mail when opening terminal.
unset MAILCHECK

# Load composure
source "/Users/fooforge/.dotfiles/shell/composure.sh"

# Load plugins
source "/Users/fooforge/.dotfiles/shell/git.plugin.bash"
source "/Users/fooforge/.dotfiles/shell/ruby.plugin.bash"

# Load colors first so they can be use in base theme
source "/Users/fooforge/.dotfiles/shell/colors.theme.bash"
source "/Users/fooforge/.dotfiles/shell/base.theme.bash"
source "/Users/fooforge/.dotfiles/shell/bobby.theme.bash"

# Load aliases
source "/Users/fooforge/.dotfiles/shell/.bash_aliases"

if [ -f /opt/boxen/env.sh ]; then
  source /opt/boxen/env.sh
fi
