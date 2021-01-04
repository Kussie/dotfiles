#!/bin/bash

NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'
UNICORN='\360\237\246\204'
WARNING='\342\232\240\357\270\217';

printf "${BOLD}${CYAN}${UNICORN} Starting Setup${NONE}${NONE}\n"
echo ""
read -p "Install Xcode CLI Tools (y/n)? " CONT
if [ "$CONT" = "y" ]; then
    xcode-select --install
fi

#generate new key
read -p "Create new SSH key (y/n)? " CONT
if [ "$CONT" = "y" ]; then
    ssh-keygen -t rsa -b 4096 -C "kussie@gmail.com"
fi

#copy fonts
read -p "Copy Fonts (y/n)? " CONT
if [ "$CONT" = "y" ]; then
    cp fonts/* /Library/Fonts/
fi


#install oh-my-zsh
read -p "Install Oh My ZSH (y/n)? " CONT
if [ "$CONT" = "y" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    #copy custom zsh theme
    cp -R themes/zsh/powerlevel9k ~/.oh-my-zsh/custom/themes
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

#copy zsh settings
read -p "Copy ZSH Settings and Scripts (y/n)? " CONT
if [ "$CONT" = "y" ]; then
    cp proxy/proxy.sh ~/.proxy.sh
    cp zsh/zshrc ~/.zshrc
    cp zsh/zsh.env.sh ~/.zsh.env.sh
    cp zsh/zsh.aliases.sh ~/.zsh.aliases.sh
    cp zsh/powerlevel-settings.sh ~/.powerlevel-settings.sh
    mkdir ~/bin
    cp bin/archey ~/bin/archey
    chmod +x ~/bin/archey
    chmod +x ~/.zsh.aliases.sh
    chmod +x ~/.zsh.env.sh
    chmod +x ~/.powerlevel-settings.sh
    chmod +x ~/.proxy.sh
    source ~/.zshrc
fi

read -p "Run Brew Scripts (y/n)? " CONT
if [ "$CONT" = "y" ]; then
    #install various items
    sudo chmod +x ./scripts/install_brew.sh
    sudo chmod +x ./scripts/install_brew_apps.sh
    sudo chmod +x ./scripts/install_php.sh
    sudo chmod +x ./scripts/install_node.sh
    sudo chmod +x ./scripts/create_work_folder.sh
    ./scripts/install_brew.sh
    ./scripts/install_brew_apps.sh
    ./scripts/install_php.sh
    ./scripts/install_node.sh
    ./scripts/create_work_folder.sh
fi

#Copy iterm profiles
read -p "Set up iTerm2 Profile (y/n)? " CONT
if [ "$CONT" = "y" ]; then
    mkdir ~/.iterm2
    cp themes/com.googlecode.iterm2.plist ~/.iterm2/com.googlecode.iterm2.plist
    cp themes/material-dark.itermcolors ~/.iterm2/material-dark.itermcolors
    open ~/.iterm2/material-dark.itermcolors
fi


#mac defaults
read -p "Install Mac Tweaks (y/n)? " CONT
if [ "$CONT" = "y" ]; then
    sudo ./osx/macos-system-defaults.sh
    sudo ./osx/macos-user-defaults.sh
fi

echo ""
echo -e "${BOLD}${CYAN}Please install the following apps manually${NONE}${NONE}"
echo -e " - Dato (Calendar dropdown - ${UNDERLINE}https://sindresorhus.com/dato${NONE})"
echo -e " - Bartender4 (Better Menubar on Big Sur- ${UNDERLINE}https://www.macbartender.com/${NONE})"
echo -e " - Pipifier (Picture in Picture - ${UNDERLINE}https://apps.apple.com/us/app/pipifier-pip-for-nearly-every-video/id1160374471${NONE})"
echo ""
printf "${BOLD}${YELLOW}${WARNING}  Setup Finished - Please Reboot${NONE}${NONE}"
echo "";

