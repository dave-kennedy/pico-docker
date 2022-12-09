FROM alpine:3.16

RUN apk -U upgrade; \
    apk add php8 php8-apache2 php8-dom php8-mbstring

COPY pico.conf /etc/apache2/conf.d/

COPY entrypoint.sh /

ENTRYPOINT /entrypoint.sh

