#!/bin/sh

# Start the MySQL service
service mariadb start
sleep 5
# Create a MySQL database if it doesn't exist
mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
#mysql -e "CREATE DATABASE IF NOT EXISTS \`myDB\`;"

# Create a MySQL user for localhost
mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
#mysql -e "CREATE USER IF NOT EXISTS \`aankote\`@'localhost' IDENTIFIED BY '1234';"

# Grant all privileges to the user on the specified database from any host
mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
# mysql -e "GRANT ALL PRIVILEGES ON \`myDB\`.* TO \`aankote\`@'%' IDENTIFIED BY '1234';"

# Alter the password for the root user
# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '1234aa';"

# Flush privileges to apply the changes
mysql -e "FLUSH PRIVILEGES;"

# Shutdown the MySQL server
mysqladmin -u root  shutdown
# mysqladmin -u root -p"1234aa" shutdown
# Start the MySQL server in safe mode
exec mysqld_safe
