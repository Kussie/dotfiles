#!/bin/bash

brew install php@7.4;
brew install php@7.3;
brew install php@8.0;
brew unlink php@7.3;
brew unlink php@7.4;
brew unlink php@8.0;
brew link php@8.0;

