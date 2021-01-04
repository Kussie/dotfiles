#!/bin/bash

brew tap homebrew/cask-versions

echo "Installing Brew Utils"
brew install git
brew install git-extras
brew install wget
brew install autoconf
brew install autojump
brew install openssl
brew install speedtest-cli
brew install hub
brew install webp
brew install zsh-autosuggestions

# Install Applications
echo "Installing Brew Casks"
# System Utilities
brew install --cask iterm2
brew install --cask ngrok
brew install --cask java
brew install --cask proxifier
brew install --cask bartender
brew install --cask moom
brew install --cask sensiblesidebuttons
brew install --cask lastpass
brew install --cask bettertouchtool # Touch bar customization
brew install --cask authy
brew install --cask osxfuse
brew install sshfs
brew install --cask alt-tab
brew install --cask macforge

# Development
brew install --cask virtualbox
brew install --cask docker
brew install --cask vagrant
brew install --cask vagrant-manager
brew install --cask postman
brew install --cask Insomnia # Postman alternative
brew install --cask forklift #FTP/SFTP etc

# Remote Drives
brew install --cask dropbox
brew install --cask onedrive

# Browsers
brew install --cask firefox
brew install --cask google-chrome
#brew install --cask google-chrome-beta
#brew install --cask microsoft-edge-canary
brew install --cask microsoft-edge-beta

# Coding/IDEs
brew install --cask db-browser-for-sqlite
brew install --cask phpstorm
#brew install --cask visual-studio-code
brew install --cask sublime-text2

# Productivity
brew install --cask alfred
brew install --cask microsoft-office
brew install --cask beyond-compare
brew install --cask the-unarchiver

# Social
brew install --cask slack
brew install --cask discord

# Remote Desktop
brew install --cask vnc-viewer
brew install --cask splashtop-personal
brew install --cask microsoft-remote-desktop-beta

# Media
brew install --cask spotify
brew install --cask spotmenu
brew install --cask vlc
#brew install --cask handbrake
#brew install --cask mplayerx
brew install --cask plex-media-player
brew install --cask pocket-casts

# Reading
brew install --cask kindle
brew install --cask yacreader

# Other
brew install --cask ring

echo "Installing QuickLook Plugins"
# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package
