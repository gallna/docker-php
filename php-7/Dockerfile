FROM phusion/baseimage
MAINTAINER Tomasz Jonik <tomasz@hurricane.works>

# Install php-7
RUN export LANG=C.UTF-8 \
    && add-apt-repository ppa:ondrej/php \
    && apt-get update \
    && apt-get install -y php7.0 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

