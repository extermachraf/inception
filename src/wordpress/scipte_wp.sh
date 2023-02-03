
# wp core download --allow-root
# mv /var/www/wpsite/wp-config-sample.php 
# wp config create --dbname=$data_name --dbuser=$USER --dbpass=$PASSWORD --dbhost=mariadb --allow-root
# wp core install --url=$DOMAIN_NAME --title=$TITLE --admin_user=$ADMIN_U --admin_password=$PASSWORD --admin_email=$ADMIN_MAIL --skip-email --allow-root
# wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$PASSWORD --allow-root
# # wp theme install astra --activate --allow-root
# sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
# mkdir /run/php
# /usr/sbin/php-fpm7.3 --nodaemonize
# data_name=data_n
# USER=user
# PASSWORD=123
# DOMAIN_NAME=ael-kouc.42.fr
# TITLE=hellow_word
# ADMIN_U=Admin
# ADMIN_MAIL=achraf.miam@gmail.com
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar > /dev/null 2>&1;
chmod +x wp-cli.phar;
mv wp-cli.phar /usr/local/bin/wp;
wp core download --allow-root
wp core config --allow-root --dbhost=mariadb --dbname=$data_name --dbuser=$USER --dbpass=$PASSWORD
wp core install --url=$DOMAIN_NAME/ --title=$TITLE --admin_user=$ADMIN_U --admin_password=$PASSWORD --admin_email=$ADMIN_MAIL --skip-email --allow-root
wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$PASSWORD --allow-root
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
exec "$@"
# data_name=wordpress
# USER=achraf
# PASSWORD=123
# DOMAIN_NAME=localhost
# TITLE=hellow_word
# ADMIN_U=ana
# ADMIN_MAIL=achraf.miam@gmail.com
# WP_USR=achraf2
# WP_EMAIL= ael-kouc@student.1337.ma

# MYSQL_ROOT_PASSWORD=dbrootpass123
# WP_DATABASE_NAME=wordpress
# WP_DATABASE_USER=dbyanab
# WP_DATABASE_PASSWORD=dbyanab123% 