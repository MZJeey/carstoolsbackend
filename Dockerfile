FROM dunglas/frankenphp

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y git unzip

RUN install-php-extensions pdo pdo_mysql mysqli

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer install --no-dev --optimize-autoloader

COPY Caddyfile /Caddyfile
