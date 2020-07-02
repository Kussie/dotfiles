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
brew cask install iterm2
brew cask install ngrok
brew cask install java
brew cask install proxifier
brew cask install bartender
brew cask install moom
brew cask install sensiblesidebuttons
brew cask install lastpass
brew cask install bettertouchtool # Touch bar customization
brew cask install authy
brew cask install osxfuse
brew install sshfs

# Development
brew cask install virtualbox
brew cask install docker
brew cask install vagrant
brew cask install vagrant-manager
brew cask install postman
brew cask install forklift #FTP/SFTP etc

# Remote Drives
brew cask install dropbox
brew cask install onedrive

# Browsers
brew cask install firefox
brew cask install google-chrome
#brew cask install google-chrome-beta
#brew cask install microsoft-edge-canary
brew cask install microsoft-edge-beta

# Coding/IDEs
brew cask install db-browser-for-sqlite
brew cask install phpstorm
#brew cask install visual-studio-code
brew cask install sublime-text2

# Productivity
brew cask install alfred
brew cask install microsoft-office
brew cask install beyond-compare
brew cask install the-unarchiver

# Social
brew cask install slack
brew cask install discord

# Remote Desktop
brew cask install vnc-viewer
brew cask install splashtop-personal
brew cask install microsoft-remote-desktop-beta

# Media
brew cask install spotify
brew cask install spotmenu
brew cask install vlc
brew cask install handbrake
brew cask install mplayerx
brew cask install plex-media-player
brew cask install pocket-casts

# Reading
brew cask install kindle
brew cask install yacreader

# Other
brew cask install ring

echo "Installing QuickLook Plugins"
# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package
