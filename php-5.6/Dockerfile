FROM nmcteam/php56
MAINTAINER Tomasz Jonik <tomasz@hurricane.works>

# Install packages
RUN apt-get update && apt-get install -y --force-yes php5-redis php5-intl

# Configure PHP and extensions
RUN /usr/sbin/php5enmod redis intl
RUN rm -rf /var/lib/apt/lists/*

# Copy configuration files
ADD php.ini /etc/php5/fpm/php.ini

# Copy modules configuration
ADD mods-available/xdebug.ini /etc/php5/mods-available/xdebug.ini

CMD ["php"]
