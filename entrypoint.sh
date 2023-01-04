#!/usr/bin/env sh

cd /var/www/localhost/htdocs/pico

if [ ! -f vendor/autoload.php ]; then
    echo 'Installing Composer...'
    apk -U upgrade
    apk add curl php8-curl php8-openssl php8-phar
    curl -LSs https://getcomposer.org/installer | php

    echo 'Installing Pico CMS...'
    php composer.phar config allow-plugins.picocms/composer-installer true
    php composer.phar install
fi

echo 'Starting HTTP server...'
httpd -D FOREGROUND

