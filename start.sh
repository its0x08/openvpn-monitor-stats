#!/bin/bash
python /var/www/html/main.py & 
iptables --flush;
rpm -Uvh http://mirror.webtatic.com/yum/el6/latest.rpm
yum remove -y php-common  
yum install -y php56w php56w-mysql php56w-common php56w-pdo php56w-opcache
php -S 0.0.0.0:2028 &
