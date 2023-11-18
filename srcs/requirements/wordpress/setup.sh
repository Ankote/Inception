#!/bin/sh
mkdir /run/php/
apt update -y

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

echo -n "Installing WP-CLI..................................."

# wait_for_mariadb() {
#     until mysqladmin -h "mariadb"-u "ankote" -p1234 ping; do
#       echo "Waiting for MariaDB to start..."
#       sleep 5
#     done

until mariadb -h "mariadb" -u"ankote" -p1234 -e ";"; do 
    echo "Wait Wait Wait one minute ..."
    sleep 5
done
echo "BER9IIIYAAAA WAAD&AAAAAA  !!!!! WAAAA 3laaaa 9waaadaaa!"

wp core install --allow-root \
                --url="$DOMINE_NAME"\
                --title="$WP_TITLE" \
                --admin_user="$WP_ADMIN" \
                --admin_password="$WP_ADMIN_PW" \
                --admin_email="$WP_ADMIN_ML" \
                --path="/var/wordpress"

wp user create --allow-root  "$WP_USER"\
                "$WP_USER_ML"\
                --role=editor\
                --user_pass="$WP_USER_PW"\
                --path="/var/wordpress"

php-fpm7.4 -F
