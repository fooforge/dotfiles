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

PATH=bin:/opt/boxen/homebrew/share/python:/opt/boxen/heroku/bin:/opt/boxen/foreman/bin:/opt/boxen/rbenv/shims:/opt/boxen/rbenv/bin:/opt/boxen/rbenv/plugins/ruby-build/bin:/opt/boxen/phantomenv/shims:/opt/boxen/phantomenv/bin:node_modules/.bin:/opt/boxen/nodenv/shims:/opt/boxen/nodenv/bin:/opt/boxen/goenv/shims:/opt/boxen/goenv/bin:/opt/boxen/bin:/opt/boxen/homebrew/bin:/opt/boxen/homebrew/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/opt/boxen/strap/bin
