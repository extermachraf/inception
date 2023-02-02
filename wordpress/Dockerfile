FROM debian:buster
RUN apt-get update && apt-get install php7.3-fpm php7.3-mysql php7.3-phar wget mariadb-server -y
WORKDIR /var/www/html/
COPY scipte_wp.sh /usr/bin/script
RUN chmod +x /usr/bin/script
ENTRYPOINT ["bash", "/usr/bin/script"]
RUN service php7.3-fpm start
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]

