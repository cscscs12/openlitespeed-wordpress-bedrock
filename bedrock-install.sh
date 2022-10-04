#!/bin/bash

#updates packages
cd ~
sudo apt update

#Install composer
cd ~
curl -s https://getcomposer.org/installer -o /tmp/composer-setup.php

#Install composer globally
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer

sudo chown -R freudend /home/freudend/.config/composer

#Grants permission to /var/www/html 
sudo chown -R freudend /var/www/html

#Install bedrock in /var/www/html
cd ~
cd /var/www/html
sudo composer create-project roots/bedrock