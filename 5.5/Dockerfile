FROM php:5.5-fpm
ENV VERSION 0.4
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev
RUN rm -rf /var/lib/apt/lists/* \
        && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
        && docker-php-ext-install gd \
        && docker-php-ext-install mysql \
        && docker-php-ext-install mbstring
CMD ["php-fpm"]
