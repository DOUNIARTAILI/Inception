FROM debian:bullseye

RUN apt update
RUN apt install nginx -y
RUN apt install openssl -y
RUN mv /var/www/html/index.nginx-debian.html /var/www/html/index.html
# RUN cp /var/www/html/index.nginx-debian.html /var/www/index.html
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/ssl-key.crt -keyout /etc/nginx/ssl/ssl-key.key -subj "/C=MA/ST=NN/L=Khouribga/O=42/OU=42/CN=drtaili.42.ma/UID=drtaili"
RUN mkdir -p /var/run/nginx
# RUN rm /etc/nginx/nginx.conf
# EXPOSE 443

COPY /conf/nginx.conf /etc/nginx/nginx.conf

RUN chown -R www-data:www-data /var/www/html


CMD ["nginx", "-g", "daemon off;"]









