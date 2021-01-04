#!/bin/bash

if test $(which node)
then
	echo "Node already installed... skipping"
else
	echo "Node.JS is not installed"
	brew install nvm
	nvm install stable
	nvm use node
	nvm alias default node
fi