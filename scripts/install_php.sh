#!/bin/bash

if test $(which brew)
then
	brew install php@7.4;
	brew install php@8.0;
	brew install php@8.1;
	brew unlink php@7.4;
	brew unlink php@8.0;
	brew unlink php@8.1;
	brew link php@7.4;
  echo "Installing Composer";
  php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
	php composer-setup.php --install-dir=bin --filename=composer;
	#mv composer.phar /usr/local/bin/composer;
else
	echo "Homebrew Required"
fi
