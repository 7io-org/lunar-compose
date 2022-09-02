FROM php:8.1-fpm
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
  pecl install imagick-3.7.0 && \
  docker-php-ext-enable imagick

RUN echo 'file_uploads = On\n\
memory_limit = 512M\n\
upload_max_filesize = 512M\n\
post_max_size = 512M\n\
max_execution_time = 60\n\
' > /usr/local/etc/php/conf.d/uploads.ini

RUN echo 'opcache.enable=1\n\
opcache.optimization_level=0x7FFFBBFF\n\
opcache.revalidate_freq=0\n\
opcache.validate_timestamps=1\n\
opcache.memory_consumption=128\n\
opcache.interned_strings_buffer=8\n\
opcache.max_accelerated_files=4000\n\
opcache.revalidate_freq=60\n\
opcache.fast_shutdown=1\n\
' > /usr/local/etc/php/conf.d/opcache.ini

RUN echo '[global]\n\
daemonize=no\n\
\n\
[www]\n\
listen=/var/run/php-fpm.sock\n\
listen.mode=0666\n\
' > /usr/local/etc/php-fpm.d/zz-docker.conf
