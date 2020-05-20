FROM php:7.4-fpm
RUN apt-get update && apt-get install -y --no-install-recommends \
    libfreetype6-dev \
    libjpeg-dev \
    libpng-dev \
    libmagickwand-dev \
    libzip-dev &&\
  docker-php-ext-configure gd --with-freetype --with-jpeg && \
  docker-php-ext-install -j "$(nproc)" \
    bcmath \
    exif \
    gd \
    mysqli \
    opcache \
    zip &&\
  pecl install imagick-3.4.4 && \
  docker-php-ext-enable imagick