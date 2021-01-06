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

echo "Creating Personal Directory"
cd ~
if [ -d "Personal" ]
then
    echo "Personal folder already exists... skipping"
else
    cd ~
    mkdir Personal
    cd Personal
    mkdir Repos
fi
