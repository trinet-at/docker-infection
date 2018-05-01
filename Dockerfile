FROM php:7.1

RUN apt-get update -yqq \
    && apt-get install git wget zlib1g-dev zlibc zlib1g zlib1g-dev libicu-dev g++ -yqq \
    && docker-php-ext-install zip > /dev/null \
    && pecl install xdebug > /dev/null \
    && docker-php-ext-enable xdebug > /dev/null \
    && docker-php-ext-configure intl > /dev/null \
    && docker-php-ext-install intl > /dev/null \
    && docker-php-ext-enable intl > /dev/null \
    && curl -sS https://getcomposer.org/installer \
     | php -- --install-dir=/usr/local/bin --filename=composer \
    && wget https://github.com/infection/infection/releases/download/0.8.1/infection.phar -O /usr/local/bin/infection.phar \
    && wget https://github.com/infection/infection/releases/download/0.8.1/infection.phar.pubkey -O /usr/local/bin/infection.phar.pubkey \
    && chmod +x /usr/local/bin/infection.phar

VOLUME /app
WORKDIR /app

CMD ["vendor/bin/infection"]
