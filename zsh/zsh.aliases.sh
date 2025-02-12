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
alias pstorm="open -a /Applications/PhpStorm.app"
alias finder="open ."

# System
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
alias sysinfo="~/bin/archey -l"
alias pot='ps -amcwwwxo "command %mem %cpu pid" | grep -v grep | head -16'
alias clr='clear' 
alias path='echo -e ${PATH//:/\\n}'
ql () { qlmanage -p "$*" >& /dev/null; } 
alias afk='open -a ScreenSaverEngine' #'/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend' #suspend

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
alias work="cd ~/Development/Work/"
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

alias unlinkphp='{ brew unlink php@7.4 php@8.0 php@8.1 php@8.2 php@8.3 php@8.4; }'

# PHP Versions
alias php@7.4='{ unlinkphp; brew link --overwrite --force shivammathur/php/php@7.4; } &> /dev/null && php -v'
alias php@8.0='{ unlinkphp; brew link --overwrite --force shivammathur/php/php@8.0; } &> /dev/null && php -v'
alias php@8.1='{ unlinkphp; brew link --overwrite --force shivammathur/php/php@8.1; } &> /dev/null && php -v'
alias php@8.2='{ unlinkphp; brew link --overwrite --force shivammathur/php/php@8.2; } &> /dev/null && php -v'
alias php@8.3='{ unlinkphp; brew link --overwrite --force shivammathur/php/php@8.3; } &> /dev/null && php -v'
alias php@8.4='{ unlinkphp; brew link --overwrite --force shivammathur/php/php@8.4; } &> /dev/null && php -v'
