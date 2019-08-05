#!/bin/zsh

# Owner
export USER_NAME="benkuskopf"
#export PATH="$(brew --prefix homebrew/php/php72)/bin:$PATH"

function iterm2_print_user_vars() {
  iterm2_set_user_var phpVersion $(php -v | awk '/^PHP/ { print $2 }')
  iterm2_set_user_var rubyVersion $(ruby -v | awk '{ print $2 }')
  iterm2_set_user_var nodeVersion $(node -v)
}

# Fun Stuff
#cowsay $(fortune -a) | lolcat
~/bin/archey -l
