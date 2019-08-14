# Aliases
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias sublime="open -a /Applications/Sublime\ Text.app"
alias finder="open ."
alias s='echo "Soar Options:\r\ns:air - Prodigy\r\ns:hotels - Roadhouse\r\ns:mui - Micro UIs\r\ns:packages - Packages\r\ns:assets - External Assets\r\ns:services - Node Services"'
alias s:hotels="cd ~/Work/Repos/soar/hotels"
alias s:air="cd ~/Work/Repos/soar/air"
alias s:packages="cd ~/Work/Repos/soar/packages"
alias s:services="cd ~/Work/Repos/soar/services"
alias s:assets="cd ~/Work/Repos/soar/assets"
alias s:mui="cd ~/Work/Repos/soar/microuis"
alias soar="cd ~/Work/Repos/soar"
alias repos="cd ~/Work/Repos"
alias sysinfo="~/bin/archey -l"
alias pa="php artisan"
alias n="npm"
alias nr="npm run"
alias proxy="~/proxy.sh"
alias pot='ps -amcwwwxo "command %mem %cpu pid" | grep -v grep | head -16'
alias be="cd ~/Work/Repos/soar/air/booking-engine/ && ./bin/prodigy.sh"
alias be:bash="cd ~/Work/Repos/soar/air/booking-engine/ && ./bin/prodigy.sh bash"
alias be:robo="cd ~/Work/Repos/soar/air/booking-engine/ && ./bin/prodigy.sh robo"
alias be:npm="cd ~/Work/Repos/soar/air/booking-engine/ && ./bin/npm.sh"
alias be:func="cd ~/Work/Repos/soar/air/booking-engine/ && ./bin/prodigy.sh robo func --host=host.docker.internal --baseUrl=http://fcau.local.prodigy.fcl.cloud"
alias be:jest="cd ~/Work/Repos/soar/air/booking-engine/ && ./bin/prodigy.sh jest -u"
alias be:redis="cd ~/Work/Repos/soar/air/booking-engine/ && docker-compose exec redis redis-cli"

alias gh="hub"
alias gh:pr="hub pull-request -c --no-edit"
alias gh:ci="hub ci-status"
alias gh:sync="hub sync"

alias docker:rm="docker rm $(docker ps -a -f status=exited -q)"
alias dl="cd ~/Downloads"
alias ll='ls -la'
alias ..='cd ../' 
alias ...='cd ../../'  
alias c='clear' 
alias path='echo -e ${PATH//:/\\n}'
ql () { qlmanage -p "$*" >& /dev/null; } 
