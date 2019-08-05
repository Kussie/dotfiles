#!/bin/bash

if test $(which node)
then
	echo "Updating NPM"
 	npm install npm@latest -g
else
	echo "Node.JS is not installed"
	brew install nvm
	nvm install stable
	nvm use node
	nvm alias default node
fi

