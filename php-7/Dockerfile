FROM phusion/baseimage
MAINTAINER Tomasz Jonik <tomasz@hurricane.works>

# Install php-7
RUN export LANG=C.UTF-8 \
    && add-apt-repository ppa:ondrej/php \
    && apt-get update \
    && apt-get install -y php7.0-fpm \
    php7.0-intl php7.0-pgsql php7.0-curl php7.0-mbstring php7.0-mysql \
    php-redis php-memcached php-amqp php-uuid php-xdebug \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Copy configuration files
ADD php-fpm.conf /etc/php/7.0/fpm/php-fpm.conf
ADD pool.d /etc/php/7.0/fpm/pool.d/

RUN ln -sf /dev/stdout /var/log/access.log \
 && ln -sf /dev/stderr /var/log/php-fpm.log

CMD ["php-fpm7.0"]

EXPOSE 9000
