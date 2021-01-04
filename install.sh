#!/bin/bash

echo "Starting Setup"
echo "Installing Xcode CLI Tools"
xcode-select --install
echo "Running Tasks"

#generate new key
echo "Creating new SSH key"
ssh-keygen -t rsa -b 4096 -C "kussie@gmail.com"

#copy fonts
echo "Copying Fonts"
cp fonts/* /Library/Fonts/

#install oh-my-zsh
echo "Installing Oh My ZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#copy custom zsh theme
cp -R themes/zsh/powerlevel9k ~/.oh-my-zsh/custom/themes
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#copy zsh settings
echo "Copying ZSH Settings and Scripts"
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

echo "Running Brew Setups"
#install various items
chmod -R +x ./scripts
./scripts/install_brew.sh
./scripts/install_brew_apps.sh
./scripts/install_php.sh
./scripts/install_node.sh
./scripts/create_work_folder.sh

#Copy iterm profiles
echo "Setting up iTerm2 Profile"
mkdir ~/.iterm2
cp themes/com.googlecode.iterm2.plist ~/.iterm2/com.googlecode.iterm2.plist
open themes/material-dark.itermcolors

#mac defaults
echo "Setting System Defaults"
#sudo ./osx/macos-system-defaults.sh
#sudo ./osx/macos-user-defaults.sh

echo "Setup Finished - Please Reboot"

