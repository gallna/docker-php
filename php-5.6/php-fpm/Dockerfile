FROM gallna/php56:latest
MAINTAINER Tomasz Jonik <tomasz@hurricane.works>

# Copy configuration files
ADD php-fpm.conf /etc/php5/fpm/php-fpm.conf

RUN ln -sf /dev/stdout /var/log/access.log \
 && ln -sf /dev/stderr /var/log/php-fpm.log

CMD ["php5-fpm"]

EXPOSE 9000
