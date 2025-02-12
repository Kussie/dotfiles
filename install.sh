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

if ! test "$(which brew)"; then
    echo "Homebrew is not installed... Please install it before proceeding with installation"
    echo "Get it from: https://brew.sh/"
    exit
fi


printf "${BOLD}${GREEN}Installing Fonts${NONE}${NONE}\n"
brew install font-fira-code font-fira-code-nerd-font font-fira-mono font-fira-mono-for-powerline font-fira-mono-nerd-font font-source-code-pro font-source-code-pro-for-powerline font-roboto font-roboto-mono font-roboto-mono-for-powerline font-roboto-mono-nerd-font font-meslo-for-powerlevel10k font-meslo-for-powerline

#copy zsh settings
read -p "Copy ZSH Settings and Scripts (y/n)? " CONT
if [ "$CONT" = "y" ]; then
    #cp zsh/zshrc ~/.zshrc
    cp zsh/zsh.env.sh ~/.zsh.env.sh
    cp zsh/zsh.aliases.sh ~/.zsh.aliases.sh
    sed -i -e "s/YOURUSERNAMEHERE/${USER}/g" ~/.zsh.env.sh
    mkdir ~/bin
    cp bin/archey ~/bin/archey
    chmod +x ~/bin/archey
    chmod +x ~/.zsh.aliases.sh
    chmod +x ~/.zsh.env.sh
    echo 'source ~/.zsh.env.sh' >> ~/.zshrc
    echo 'source ~/.zsh.aliases.sh' >> ~/.zshrc
fi


read -p "Run Brew Scripts (y/n)? " CONT
if [ "$CONT" = "y" ]; then
    #install various items
    sudo chmod +x ./scripts/install_brew.sh
    sudo chmod +x ./scripts/install_brew_apps.sh
    sudo chmod +x ./scripts/install_php.sh
    sudo chmod +x ./scripts/install_node.sh
    echo ""
    read -p "Install Recommended Brew Apps (y/n)? " CONT
    if [ "$CONT" = "y" ]; then
        ./scripts/install_brew_apps.sh
    fi

    echo ""
    read -p "Install Node/NVM (y/n)? " CONT
    if [ "$CONT" = "y" ]; then
        ./scripts/install_node.sh
    fi
    echo ""
    read -p "Install PHP (y/n)? " CONT
    if [ "$CONT" = "y" ]; then
        ./scripts/install_php.sh
    fi
fi


#Copy iterm profiles
read -p "Set up iTerm2 Profile (y/n)? " CONT
if [ "$CONT" = "y" ]; then
    mkdir ~/.iterm2
    cp themes/com.googlecode.iterm2.plist ~/.iterm2/com.googlecode.iterm2.plist
    cp themes/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
    cp themes/material-dark.itermcolors ~/.iterm2/material-dark.itermcolors
    cp themes/iTerm2 State.itermexport ~/Documents/iTerm2 State.itermexport
    open ~/.iterm2/material-dark.itermcolors
    echo "iTerm settings copied to Documents folder for importing into iTerm"
fi

printf "${BOLD}${YELLOW}${WARNING}  Setup Finished - Please Reboot${NONE}${NONE}"
echo "";

