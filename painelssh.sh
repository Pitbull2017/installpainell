#!/bin/bash
apt-get update && apt-get upgrade
apt-get install curl
apt-get install apache2
apt-get install php5 libapache2-mod-php5 php5-mcrypt
service apache2 restart
apt-get install mysql-server php5-mysql
mysql_install_db
mysql_secure_installation
apt-get install phpmyadmin
php5enmod mcrypt
service apache2 restart
ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
apt-get install libssh2-1-dev libssh2-php
php -m |grep ssh2
service apache2 restart
cd /var/www/html
wget https://www.hostgrid.com.br/downloads/painelssh.zip
apt-get install unzip
unzip painelssh.zip
rm painelssh.zip
clear
echo -e "\033[1;31mCOMPLETADO COM SUCESSO.\033[0m"
