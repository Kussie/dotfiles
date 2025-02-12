#!/bin/bash
if test $(which brew)
then
	echo "Installing Brew Utils"
	brew install git git-extras wget autoconf hub webp zsh-autosuggestions tree jq

	# Install Applications
	echo "Installing Brew Casks"
	brew install --cask aerial forklift db-browser-for-sqlite dbeaver-community tableplus phpstorm visual-studio-code sublime-text alfred beyond-compare spotify
else
	echo "Homebrew Required"
fi