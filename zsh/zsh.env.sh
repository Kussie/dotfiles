#!/bin/zsh

# Owner
export USER_NAME="YOURUSERNAMEHERE"
#export PATH="$(brew --prefix homebrew/php/php72)/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

function iterm2_print_user_vars() {
  iterm2_set_user_var phpVersion $(php -v | awk '/^PHP/ { print $2 }')
  iterm2_set_user_var nodeVersion $(node -v)
}

# Fun Stuff
#cowsay $(fortune -a) | lolcat
~/bin/archey -l
