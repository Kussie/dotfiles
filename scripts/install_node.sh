#!/bin/bash

if test $(which brew)
then
	if test $(which node)
	then
		echo "Node already installed... skipping"
	else
		echo "Node.JS is not installed"
		brew install nvm
		nvm install 14
		nvm use 14
		nvm alias default node
	fi
else
	echo "Homebrew Required"
fi