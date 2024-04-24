FROM debian:bullseye

RUN apt update
RUN apt install php  -y
RUN apt install php7.4-fpm -y
RUN service php7.4-fpm start
WORKDIR /var/www/html/
RUN rm -rf *
RUN apt install wget
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz
RUN rm latest.tar.gz
RUN mv /var/www/html/wordpress/* /var/www/html/
# RUN rm -rf wordpress
RUN sed -i 's@/run/php/php7.4-fpm.sock@9000@' /etc/php/7.4/fpm/pool.d/www.conf
CMD ["php-fpm7.4", "-F"]
