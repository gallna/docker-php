FROM gallna/docker-php:php7-fpm
MAINTAINER Tomasz Jonik <tomasz@hurricane.works>

# Install amqp module
RUN apt-get update \
    && apt-get install -y php-amqp \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

