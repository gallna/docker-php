FROM php:7-zts

RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    libssl-dev

# Compile Data Structures extension
RUN git clone https://github.com/php-ds/extension "php-ds" \
    && cd php-ds \
    && phpize \
    && ./configure \
    && make \
    && make install \
    && docker-php-ext-enable ds

# Compile Redis extension
RUN git clone --branch php7 https://github.com/phpredis/phpredis "php-redis" \
    && cd php-redis \
    && phpize \
    && ./configure \
    && make \
    && make install \
    && docker-php-ext-enable redis

RUN apt-get install -y libmemcached-dev \
    && git clone --branch php7 https://github.com/php-memcached-dev/php-memcached "memcached" \
    && cd memcached \
    && phpize \
    && ./configure \
    && make \
    && make install \
    && docker-php-ext-enable memcached

RUN pecl install xdebug && docker-php-ext-enable xdebug

RUN apt-get install -y librabbitmq-dev \
    && pecl install amqp && docker-php-ext-enable amqp

RUN apt-get install -y curl libcurl4-openssl-dev \
    && docker-php-ext-install curl

RUN docker-php-ext-install pdo_mysql

RUN apt-get install -y libicu-dev \
    && docker-php-ext-install intl

RUN docker-php-ext-install bcmath && \
    docker-php-ext-install mbstring && \
    docker-php-ext-install zip

RUN apt-get install -y libmcrypt-dev \
    && docker-php-ext-install mcrypt

RUN apt-get install -y libxml2-dev \
    && docker-php-ext-install soap

RUN pecl install pthreads && docker-php-ext-enable pthreads
