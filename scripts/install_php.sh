#!/bin/bash

if test $(which brew)
then
  brew tap shivammathur/php;
  brew tap shivammathur/extensions;

  brew install shivammathur/php/php@7.4;
  brew install shivammathur/php/php@8.0;
  brew install shivammathur/php/php@8.1;
  brew install shivammathur/php/php@8.2;
  brew install shivammathur/php/php@8.3;
  brew install shivammathur/php/php@8.4;
  brew unlink php@7.4 php@8.0 php@8.1 php@8.2 php@8.3 php@8.4;
	brew link --overwrite --force shivammathur/php/php@7.4;

	echo "Installing PHP Extensions";
	brew install shivammathur/extensions/imap@7.4 shivammathur/extensions/imap@8.0 shivammathur/extensions/imap@8.1 shivammathur/extensions/imap@8.2 shivammathur/extensions/imap@8.3 shivammathur/extensions/imap@8.4;
  brew install shivammathur/extensions/xdebug@7.4 shivammathur/extensions/xdebug@8.0 shivammathur/extensions/xdebug@8.1 shivammathur/extensions/xdebug@8.2 shivammathur/extensions/xdebug@8.3 shivammathur/extensions/xdebug@8.4;
  brew install shivammathur/extensions/yaml@7.4 shivammathur/extensions/yaml@8.0 shivammathur/extensions/yaml@8.1 shivammathur/extensions/yaml@8.2 shivammathur/extensions/yaml@8.3 shivammathur/extensions/yaml@8.4;
  brew install shivammathur/extensions/zmq@7.4 shivammathur/extensions/zmq@8.0 shivammathur/extensions/zmq@8.1 shivammathur/extensions/zmq@8.2 shivammathur/extensions/zmq@8.3 shivammathur/extensions/zmq@8.4;
  brew install shivammathur/extensions/rdkafka@7.4 shivammathur/extensions/rdkafka@8.0 shivammathur/extensions/rdkafka@8.1 shivammathur/extensions/rdkafka@8.2 shivammathur/extensions/rdkafka@8.3 shivammathur/extensions/rdkafka@8.4;

  echo "Installing Composer";
  php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
	php composer-setup.php --install-dir=bin --filename=composer;
	mkdir /usr/local/bin/;
	mv bin/composer /usr/local/bin/composer;
else
	echo "Homebrew Required"
fi
