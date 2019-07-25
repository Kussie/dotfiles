#!/bin/bash

if test $(which node)
then
	echo "Updating NPM"
 	npm install npm@latest -g
else
	echo "Node.JS is not installed"
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
	nvm install stable
	nvm use node
	nvm alias default node
fi

