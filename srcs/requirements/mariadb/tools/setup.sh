#!/bin/sh

# Start the MySQL service
service mariadb start
sleep 2
# Create a MySQL database if it doesn't exist
mariadb -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
#mysql -e "CREATE DATABASE IF NOT EXISTS \`myDB\`;"

# Create a MySQL user for localhost
mariadb -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
#mariadb -e "CREATE USER IF NOT EXISTS \`aankote\`@'localhost' IDENTIFIED BY '1234';"

# Grant all privileges to the user on the specified database from any host
mariadb -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
# mariadb -e "GRANT ALL PRIVILEGES ON \`myDB\`.* TO \`aankote\`@'%' IDENTIFIED BY '1234';"

# Alter the password for the root user
# mariadb -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '0000';"
# mariadb -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '1234aa';"

# Flush privileges to apply the changes
mariadb -e "FLUSH PRIVILEGES;"

# Shutdown the MySQL server
mysqladmin -u root shutdown
# mysqladmin -u root -p"1234aa" shutdown
# Start the MySQL server in safe mode
exec mysqld_safe
