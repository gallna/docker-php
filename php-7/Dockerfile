FROM phusion/baseimage
MAINTAINER Tomasz Jonik <tomasz@hurricane.works>

# Install php-7
RUN export LANG=C.UTF-8 \
    && add-apt-repository ppa:ondrej/php \
    && apt-get update \
    && apt-get install -y php7.0-fpm php5-redis php5-intl \
    && php5enmod redis intl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN ln -sf /dev/stdout /var/log/access.log \
 && ln -sf /dev/stderr /var/log/php-fpm.log

CMD ["php"]
