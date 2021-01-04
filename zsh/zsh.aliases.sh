NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'

# Aliases
# Apps
alias sublime="open -a /Applications/Sublime\ Text.app"
alias finder="open ."

# System
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
alias sysinfo="~/bin/archey -l"
alias proxy="~/.proxy.sh"
alias pot='ps -amcwwwxo "command %mem %cpu pid" | grep -v grep | head -16'
alias clr='clear' 
alias path='echo -e ${PATH//:/\\n}'
ql () { qlmanage -p "$*" >& /dev/null; } 
alias afk='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend' #suspend

# Directories
alias count='find . -type f | wc -l'
alias dl="cd ~/Downloads"
alias ll='ls -la'
alias ..='cd ../' 
alias ...='cd ../../'


# Development
alias pa="php artisan"
alias n="npm"
alias nr="npm run"
alias y="yarn"
alias repos="cd ~/Work/Repos"
alias log='tail -n0 -f storage/logs/laravel.log'

# PHP Composer
alias c="composer"
alias cu="composer update"
alias ci="composer install"

# GIT
alias g="git"
alias gco="git checkout"
alias gf="git fetch"
alias gp="git pull"
alias gr="git reset --hard"
alias ga="git add ."
function gcap() { git commit -am "$@"; git push; }

# Docker
alias docker:rm="docker rm $(docker ps -a -f status=exited -q)"
alias dc="docker-compose"

# Github
alias gh="hub"
alias gh:pr="hub pull-request -c --no-edit"
alias gh:ci="hub ci-status"
alias gh:sync="hub sync"

# Remote Servers
alias levi='echo -e "${BOLD}${GREEN}Available options for Levithan (NUC Gen 8 Server)${NONE}${NONE}\n\n${CYAN}levi:ssh${NONE} - Establish SSH session\n${CYAN}levi:mount${NONE} - Mount home drive on local machine\n${CYAN}levi:unmount${NONE} - unmount the current mounted home directory"'
alias levi:ssh="ssh kussie@kussie.com.au -p 2200"
alias levi:mount="sshfs -p 2200 kussie@kussie.com.au:/home/kussie ~/Personal/levi && cd ~/Personal/levi"
alias levi:unmount="umount kussie@kussie.com.au:/home/kussie"

# PHP Versions
alias php@7.1='{ brew unlink php@7.1; brew unlink php@7.2; brew unlink php@7.3; brew unlink php@7.4; brew unlink php@8.0; brew link php@7.1 --force --overwrite; } &> /dev/null && php -v'
alias php@7.2='{ brew unlink php@7.1; brew unlink php@7.2; brew unlink php@7.3; brew unlink php@7.4; brew unlink php@8.0; brew link php@7.2 --force --overwrite; } &> /dev/null && php -v'
alias php@7.3='{ brew unlink php@7.1; brew unlink php@7.2; brew unlink php@7.3; brew unlink php@7.4; brew unlink php@8.0; brew link php@7.3 --force --overwrite; } &> /dev/null && php -v'
alias php@7.4='{ brew unlink php@7.1; brew unlink php@7.2; brew unlink php@7.3; brew unlink php@7.4; brew unlink php@8.0; brew link php@7.4 --force --overwrite; } &> /dev/null && php -v'
alias php@8.0='{ brew unlink php@7.1; brew unlink php@7.2; brew unlink php@7.3; brew unlink php@7.4; brew unlink php@8.0; brew link php@8.0 --force --overwrite; } &> /dev/null && php -v'


