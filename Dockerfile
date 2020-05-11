FROM php:7.2-alpine
RUN docker-php-ext-install gettext
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
