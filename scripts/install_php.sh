#!/bin/bash

if test $(which brew)
then
  brew tap shivammathur/php;
  brew install shivammathur/php/php@7.4;
  brew install shivammathur/php/php@8.0;
  brew install shivammathur/php/php@8.1;
  brew install shivammathur/php/php@8.2;
  brew unlink php@7.4;
  brew unlink php@8.0;
  brew unlink php@8.1;
  brew unlink php@8.2;
	brew link --overwrite --force shivammathur/php/php@7.4;
  echo "Installing Composer";
  php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
	php composer-setup.php --install-dir=bin --filename=composer;

	mkdir /usr/local/bin/;
	mv bin/composer /usr/local/bin/composer;
	composer global require laravel/valet;
else
	echo "Homebrew Required"
fi
