FROM debian:bullseye

RUN apt update
RUN apt install php php-common php-mysql php-gmp php-curl php-intl php-mbstring php-xmlrpc php-gd php-xml php-cli php-zip -y
RUN apt install php7.4-fpm -y
RUN service php7.4-fpm start
WORKDIR /var/www/html/
RUN rm -rf *
RUN apt install wget
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz
RUN chown -R www-data:www-data /var/www/html/wordpress/
RUN rm latest.tar.gz
# RUN cp /wordpress/* /var/www/html/
# RUN rm -rf wordpress
RUN sed -i 's@/run/php/php7.4-fpm.sock@9000@' /etc/php/7.4/fpm/pool.d/www.conf
CMD ["php-fpm7.4", "-F"]
