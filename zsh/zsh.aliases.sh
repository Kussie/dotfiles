# Aliases
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias sublime="open -a /Applications/Sublime\ Text.app"
alias finder="open ."
alias roadhouse="cd ~/Work/Repos/soar/hotels"
alias prodigy="cd ~/Work/Repos/soar/air"
alias soar="cd ~/Work/Repos/soar"
alias repos="cd ~/Work/Repos"
alias sysinfo="~/bin/archey -l"
alias pa="php artisan"
alias n="npm"
alias nr="npm run"
alias proxy="ssh -ND 8888 kussie@kussie.com.au -p 2222"
alias pot='ps -amcwwwxo "command %mem %cpu pid" | grep -v grep | head -16'
alias be="cd ~/Work/Repos/soar/air/booking-engine/ && ./bin/prodigy.sh"
alias be:bash="cd ~/Work/Repos/soar/air/booking-engine/ && ./bin/prodigy.sh bash"
alias be:robo="cd ~/Work/Repos/soar/air/booking-engine/ && ./bin/prodigy.sh robo"
alias be:npm="cd ~/Work/Repos/soar/air/booking-engine/ && ./bin/npm.sh"
alias be:func="cd ~/Work/Repos/soar/air/booking-engine/ && ./bin/prodigy.sh robo func --host=host.docker.internal --baseUrl=http://fcau.local.prodigy.fcl.cloud"
alias be:jest="cd ~/Work/Repos/soar/air/booking-engine/ && ./bin/prodigy.sh jest -u"
alias be:redis="cd ~/Work/Repos/soar/air/booking-engine/ && docker-compose exec redis redis-cli"

alias dl="cd ~/Downloads"
alias ll='ls -la'
alias ..='cd ../' 
alias ...='cd ../../'  
alias c='clear' 
alias path='echo -e ${PATH//:/\\n}'
ql () { qlmanage -p "$*" >& /dev/null; } 