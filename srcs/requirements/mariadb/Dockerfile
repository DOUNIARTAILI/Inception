FROM debian:bullseye

RUN apt update
RUN apt install mariadb-server -y
COPY /tools/init.sql /
RUN service mariadb start 
RUN chmod 777 /run/mysqld/mysqld.sock
# RUN chmod 777 /etc/mysql/my.cnf

RUN sed -i 's/socket = \/run\/mysqld\/mysqld.sock/socket = \/var\/run\/mysqld\/mysqld.sock/g' /etc/mysql/my.cnf
RUN service mariadb start && \
    mariadb < init.sql

CMD ["mysqld_safe"]