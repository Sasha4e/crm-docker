FROM php:7.2-fpm

ARG user

RUN apt-get update && apt-get install -y \
apt-utils curl wget \
libfreetype6-dev \
libjpeg62-turbo-dev \
libzip-dev zip \
libpng-dev \
libxml2-dev \
libmcrypt-dev \
libcurl4-openssl-dev \
libssl-dev \
&& docker-php-ext-configure zip --with-libzip \
&& pecl install mcrypt-1.0.2 redis \
&& docker-php-ext-install zip mysqli pdo_mysql \
&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
&& docker-php-ext-install -j$(nproc) gd \
&& docker-php-ext-enable mcrypt redis \
&& rm -rf /var/lib/apt/lists/*

ADD php.ini /usr/local/etc/php/conf.d/40-custom.ini
# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Add user for project
RUN groupadd -g 1000 $user \
&& useradd -u 1000 -ms /bin/bash -g $user $user

# Change current user to $user
USER $user

COPY .bash_aliases /home/$user/.bash_aliases

CMD ["php-fpm"]
