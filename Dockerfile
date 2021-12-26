FROM php:7.4-cli

RUN apt-get update -yqq && \
    curl -sL https://deb.nodesource.com/setup_17.x | bash - && \
    apt-get install git nodejs -yqq && \
    npm install -g yarn && \
    yarn --version && \
    #apt-get install gnupg -yqq && \
    #apt-get install git nodejs libcurl4-gnutls-dev libicu-dev libmcrypt-dev libvpx-dev libjpeg-dev libpng-dev libxpm-dev zlib1g-dev libfreetype6-dev libxml2-dev libexpat1-dev libbz2-dev libgmp3-dev libldap2-dev unixodbc-dev libpq-dev libsqlite3-dev libaspell-dev libsnmp-dev libpcre3-dev libtidy-dev libonig-dev libzip-dev python2 -yqq && \
    #python2 -V && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && \
    composer -V
    

