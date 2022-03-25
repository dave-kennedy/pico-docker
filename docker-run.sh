#!/usr/bin/env bash

if docker container ls -a -f name=pico_dev | grep -q pico_dev; then
    echo 'Starting existing container...'
    docker start -i pico_dev
    exit
fi

echo 'Starting new container...'

docker run \
    -i \
    --name=pico_dev \
    -p 8080:80 \
    -t \
    -v "$PWD/pico-composer:/var/www/localhost/htdocs/pico" \
    pico_dev

