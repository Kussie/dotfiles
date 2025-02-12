#!/bin/bash

if test $(which brew)
then
	if test $(which node)
	then
		echo "Node already installed... skipping"
	else
		echo "Node.JS is not installed"
		brew install nvm
		source ~/.zsh.env.sh
		nvm install node
		nvm use node
	fi
else
	echo "Homebrew Required"
fi