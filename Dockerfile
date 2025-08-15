# Use pre-built Nginx + PHP-FPM image
FROM richarvey/nginx-php-fpm:latest

# Copy project files
COPY . .

# Set environment variables
ENV SKIP_COMPOSER 1
ENV WEBROOT /var/www/html/public
ENV PHP_ERRORS_STDERR 1
ENV RUN_SCRIPTS 1
ENV REAL_IP_HEADER 1
ENV COMPOSER_ALLOW_SUPERUSER 1

CMD ["/start.sh"]
