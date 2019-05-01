#!/bin/bash
set -e

echo "################################################################"
echo "###################   Installing LAMP     ######################"
echo "################################################################"
echo ""

# The pre-configured scrips
LAMPdir=/lamp

# A nice lightweightbrowser to start with
sudo pacman -S falkon

# Apache
sudo pacman -S apache
sudo cp $LAMPdir/httpd.conf /etc/httpd/conf/httpd.conf
sudo cp $LAMPdir/index.html /srv/http/index.html

# Test
sudo systemctl start httpd
sudo systemctl status httpd
sudo systemctl stop httpd

# MySQL
sudo pacman -S mysql
sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

# Test
sudo systemctl start mariadb
sudo systemctl status mariadb
#sudo mysql -u root -p

# Make more secure
sudo mysql_secure_installation
sudo systemctl stop mariadb

# PHP
sudo pacman -S php php-apache
sudo cp $LAMPdir/test.php /srv/http/test.php

# phpMyAdmin
sudo pacman -S phpmyadmin
sudo cp $LAMPdir/phpmyadmin.conf /etc/httpd/conf/extra/phpmyadmin.conf

# Setting up two sites
sudo mkdir /srv/http/bouwsite1.ont
sudo mkdir /srv/http/bouwsite1.ont/web
sudo cp $LAMPdir/index.html /srv/http/bouwsite1.ont/web
sudo cp $LAMPdir/test.php /srv/http/bouwsite1.ont/web
sudo cp -r /srv/http/bouwsite1.ont/ /srv/http/bouwsite2.ont/

# Our virtualhosts sign in
sudo cp $LAMPdir/hosts /etc/hosts

sudo chmod -R o+r /srv/http/
sudo chmod -R o+r /srv/http/

sudo systemctl start httpd
sudo systemctl status httpd