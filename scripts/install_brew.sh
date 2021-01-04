#!/bin/bash

echo "Installing Brew"

if test $(which node)
then
	echo "Homebrew already installed... skipping"
else
	echo "Homebrew is not installed...installing"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade
brew doctor