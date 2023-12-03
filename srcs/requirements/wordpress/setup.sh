#!/bin/sh
mkdir /run/php/
apt update -y

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

echo -n "Installing WP-CLI..................................."

until mariadb -h "mariadb" -u"$SQL_USER" -p$SQL_PASSWORD -e ";"; do 
    echo "Wait Wait Wait one minute ..."
    sleep 1
done
echo "Wordpress Connected to MariaDb"

wp core install --allow-root \
                --url="$DOMINE_NAME"\
                --title="$WP_TITLE" \
                --admin_user="$WP_ADMIN" \
                --admin_password="$WP_ADMIN_PW" \
                --admin_email="$WP_ADMIN_ML" \
                --path="/var/www/wordpress"

wp user create --allow-root  "$WP_USER"\
                "$WP_USER_ML"\
                --role=editor\
                --user_pass="$WP_USER_PW"\
                --path="/var/www/wordpress"

wp plugin install --allow-root\
                    redis-cache \
                    --activate\
                    --path="/var/www/wordpress"
                
wp redis enable  --path="/var/www/wordpress" --allow-root

wp theme install blogus --allow-root\
                        --path="/var/www/wordpress"\
                        --activate

php-fpm7.4 -F
