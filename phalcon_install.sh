#!/bin/bash
apt-get install apache2 mysql-server php5 php5-mysql php5-dev libpcre3-dev gcc make git phpmyadmin -y

#install phaclon
cd ~/
git clone --depth=1 git://github.com/phalcon/cphalcon.git
cd cphalcon/build/
./install
echo extension=phalcon.so >> /etc/php5/conf.d/30-phalcon.ini
service apache2 restart

#install phalcon-devtools
cd /var/www
git clone https://github.com/phalcon/phalcon-devtools.git
cd phalcon-devtools/
./phalcon.sh

phalcon
