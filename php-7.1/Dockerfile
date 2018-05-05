FROM php:7.1-fpm

# Install modules
RUN apt-get update && apt-get install -y --no-install-recommends \
	libfreetype6-dev \
	libjpeg62-turbo-dev \
	libmcrypt-dev \
	libpng12-dev \
	git \
	zip


RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install gd

RUN docker-php-ext-install mcrypt

RUN docker-php-ext-install mysqli

RUN docker-php-ext-install zip

RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer
COPY composer.json ./
RUN composer install --no-scripts --no-autoloader
COPY . ./
RUN composer dump-autoload --optimize

CMD ["php-fpm"]
