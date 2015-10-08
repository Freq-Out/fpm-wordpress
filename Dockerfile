FROM php:5.6-fpm
ENV VERSION 0.2
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev
RUN apt-get install -y --no-install-recommends ssmtp
RUN rm -rf /var/lib/apt/lists/* \
        && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
        && docker-php-ext-install gd
RUN docker-php-ext-install mysqli
CMD ["php-fpm"]
