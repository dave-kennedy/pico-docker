#!/usr/bin/env sh

cd /var/www/localhost/htdocs/pico

if [ ! -f vendor/autoload.php ]; then
    echo 'Installing Composer...'
    apk -U upgrade
    apk add curl php8-curl php8-openssl php8-phar
    curl -LSs https://getcomposer.org/installer | php8

    echo 'Installing Pico CMS...'
    php8 composer.phar install
fi

echo 'Starting HTTP server...'
httpd -D FOREGROUND

