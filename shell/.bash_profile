#!/usr/bin/env bash

# Set my editor and git editor
export EDITOR='subl -w'
export GIT_EDITOR='subl -w'

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

source /opt/boxen/env.sh
