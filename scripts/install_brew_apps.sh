#!/bin/bash

echo "Installing Brew Apps"
brew install git
brew install git-extras
brew install wget
brew install autoconf
brew install autojump
brew install openssl
brew install speedtest-cli
brew install hub
brew install webp

echo "Installing Brew Casks"
brew cask install iterm2
brew cask install firefox
brew cask install google-chrome
brew cask install spotify
brew cask install spotmenu
brew cask install slack
brew cask install phpstorm
brew cask install sublime-text2
brew cask install dropbox
brew cask install virtualbox
brew cask install docker
brew cask install beyond-compare
brew cask install proxifier
brew cask install bartender
brew cask install alfred
brew cask install microsoft-office
brew cask install microsoft-edge-canary
brew cask install handbrake
brew cask install moom
brew cask install splashtop-personal
brew cask install sensiblesidebuttons
brew cask install vlc
brew cask install microsoft-remote-desktop-beta
brew cask install ngrok
brew cask install yacreader
brew cask install onedrive
brew cask install plex-media-player
brew cask install the-unarchiver
brew cask install mplayerx
brew cask install vnc-viewer
brew cask install db-browser-for-sqlite
brew cask install postman
brew cask install vagrant
brew cask install vagrant-manager
brew cask install java
brew cask install lastpass

echo "Install QuickLook Plugins"
# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
