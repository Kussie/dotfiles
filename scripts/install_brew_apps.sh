#!/bin/bash
if test $(which brew)
then
	brew tap homebrew/cask-versions

	echo "Installing Brew Utils"
	brew install git git-extras wget autoconf autojump openssl speedtest-cli hub webp zsh-autosuggestions tree jq

	# Install Applications
	echo "Installing Brew Casks"

	# System Utilities
	brew install --cask iterm2 ngrok moom sensiblesidebuttons authy alt-tab
	#brew install --cask bartender # If on Big Sur install Bartender 4 manually
	brew install --cask bitwarden lastpass
	brew install --cask bettertouchtool # Touch bar customization

	# Screensaver
	brew install --cask aerial

	# Development
	brew install --cask rancher
	#brew install --cask virtualbox
	#brew install --cask docker
	#brew install --cask vagrant
	#brew install --cask vagrant-manager
	brew install --cask postman
	brew install --cask insomnia # Postman alternative
	brew install --cask forklift #FTP/SFTP etc

	# Remote Drives
	#brew install --cask dropbox
	#brew install --cask onedrive

	# Browsers
	brew install --cask firefox google-chrome microsoft-edge
	#brew install --cask google-chrome-beta
	#brew install --cask microsoft-edge-beta

	# Database Clients
	brew install --cask db-browser-for-sqlite
  brew install --cask dbeaver-community
	brew install --cask tableplus

	# Coding/IDEs
	brew install --cask phpstorm
	brew install --cask visual-studio-code
	brew install --cask sublime-text
	brew install --cask typora # Markdown editor/viewer

	# Productivity
	brew install --cask alfred microsoft-office beyond-compare keka the-unarchiver

	# Social
	#brew install --cask slack discord google-hangouts zoom

	# Remote Desktop
	brew install --cask vnc-viewer splashtop-personal microsoft-remote-desktop

	# Media
	brew install --cask spotify spotmenu vlc iina pocket-casts

	# Reading
	#brew install --cask kindle yacreader

	# Other
	#brew install --cask ring

	echo "Installing QuickLook Plugins"
	# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
	brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook
else
	echo "Homebrew Required"
fi