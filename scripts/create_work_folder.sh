#!/bin/bash

echo "Creating Work Directory"
cd ~
if [ -d "Work" ] 
then
    echo "Work folder already exists... skipping" 
else
    cd ~
	mkdir Work
	cd Work
	mkdir Repos
fi

