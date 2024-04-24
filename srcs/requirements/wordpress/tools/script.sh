#!/bin/bash

if [ ! -f "/var/www/html/wp-config.php" ];
then
    wp core download --allow-root
    wp core config --dbhost=my-db --dbname='wordpress_db' --dbuser='wordpress_user' --dbpass='password' --allow-root
    wp core install --url='drtaili.42.fr' --title="Your Blog Title" --admin_name='wordpress_admin' --admin_password='4Long&Strong1' --admin_email='you@example.com' --allow-root
fi
php-fpm7.4 -F

# if [ -f "/var/www/html/wp-config.php"]  # Check if wp-config.php exists
# then
#   exit 0
# fi
# wp core download --allow-root
# wp core config --dbhost=my-db --dbname='wordpress_db' --dbuser='wordpress_user' --dbpass='password' --allow-root
# wp core install --url='drtaili.42.fr' --title="Your Blog Title" --admin_name='wordpress_admin' --admin_password='4Long&Strong1' --admin_email='you@example.com' --allow-root
# php-fpm7.4 -F
