FROM php:7.4-apache
# Installing basic tools
RUN apt update
RUN apt install -y nano 
RUN apt install -y git
# Copy app
COPY --chown=www-data:www-data index.html /var/www/html
COPY --chown=www-data:www-data info.php /var/www/html
# Set working directory
WORKDIR /var/www/html
