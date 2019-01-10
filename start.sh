#!/bin/bash
python /var/www/html/main.py & 
iptables --flush;
rpm -Uvh http://mirror.webtatic.com/yum/el6/latest.rpm
yum remove -y php-common  
yum install -y php56w
yum install -y php56w-mysql
yum install -y php56w-common
yum install -y php56w-pdo
yum install -y php56w-opcache
php -S 0.0.0.0;8080 &