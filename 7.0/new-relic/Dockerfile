FROM gallna/php-fpm:latest

ENV NR_INSTALL_SILENT=true \
    NR_INSTALL_PHPLIST=/usr/local/bin \
    NR_INSTALL_KEY=$NR_INSTALL_KEY

RUN apt-get update && apt-get install -y wget python-setuptools --no-install-recommends && \
    easy_install pip && \
    mkdir -p /var/log/newrelic && \

    wget -r -nd --no-parent -Alinux.tar.gz http://download.newrelic.com/php_agent/release/ && \
    tar -xzf newrelic-php*.tar.gz --strip=1 && \
    ./newrelic-install install && \
    pip install newrelic-plugin-agent && \

    # clean
    rm -Rf * && \
    apt-get purge -qy --auto-remove wget && \
    apt-get autoclean -qy && rm -rf /var/lib/apt/lists
