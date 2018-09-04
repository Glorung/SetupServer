#!/bin/sh

# DO NOT EXECUTE IT

sudo apt install tasksel
sudo tasksel install lamp-server

sudo apt install apache2
sudo nano /etc/apache2/apache2.conf 
sudo nano /etc/apache2/mods-available/mpm_prefork.conf 
sudo a2dismod mpm_event
sudo a2enmod mpm_prefork
sudo systemctl restart apache2

sudo apt install php7.0 libapache2-mod-php7.0 php7.0-mysql
sudo apt install php libapache2-mod-php php-mysql
sudo apt install phpmyadmin php-mbstring php-gettext
sudo phpenmod mbstring
sudo systemctl restart apache2
sudo mysql

php --version

service mysql restart

sudo apt-get install phpmyadmin

cd /etc/phpmyadmin/conf.d/

nano conf.d
nano apache.conf

sudo -H gedit /etc/apache2/apache2.conf
/etc/init.d/apache2 restart

sudo apt-get install apache2 mariadb-server libapache2-mod-php7.2
sudo apt-get install php7.2-gd php7.2-json php7.2-mysql php7.2-curl php7.2-mbstring

cd usr

sudo nautilus
sudo nano /etc/apache2/sites-available/nextcloud.conf
sudo ln -s /etc/apache2/sites-available/nextcloud.conf /etc/apache2/sites-enabled/nextcloud.conf
sudo a2enmod rewrite
sudo a2enmod headers
sudo a2enmod dir
sudo a2enmod mime
sudo a2enmod setenvif
sudo  service apache2 restart
sudo nautilus

sudo chown -R www-data:www-data /var/www/nextcloud/
sudo mysql_secure_installation 

mysql -p
mysql_secure_installation
