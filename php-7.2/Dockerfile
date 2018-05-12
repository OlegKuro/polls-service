FROM php:7.2-fpm

# Install modules
RUN apt-get update && apt-get install -y --no-install-recommends \
	libfreetype6-dev \
	libjpeg62-turbo-dev \
	libmcrypt-dev \
	libpng-dev \
	git \
	zip


RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install gd

RUN pecl install mcrypt-1.0.1

RUN docker-php-ext-enable mcrypt

RUN docker-php-ext-install mysqli

RUN docker-php-ext-install zip

RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer

COPY ./composer.json /var/www/html/composer.json

CMD ["php-fpm"]
