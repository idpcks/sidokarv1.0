FROM php:7.2-apache

WORKDIR /var/www/html

RUN apt-get update || true

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN curl -fsSL https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz \
    -o /tmp/ioncube.tar.gz \
 && tar -xzf /tmp/ioncube.tar.gz -C /tmp \
 && cp /tmp/ioncube/ioncube_loader_lin_7.2.so \
    /usr/local/lib/php/extensions/no-debug-non-zts-20170718/ \
 && echo "zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/ioncube_loader_lin_7.2.so" \
    > /usr/local/etc/php/conf.d/00-ioncube.ini

RUN a2enmod rewrite

EXPOSE 80

CMD ["apache2-foreground"]
