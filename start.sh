#!/bin/bash
cp ./index.php /var/www/html/;
cp ./main.py /var/www/html/;
cp ./stats.txt /vaw/www/html;
iptables --flush;
sudo yum install -y httpd php;
sudo service httpd start;
sudo chkconfig httpd on;
sudo service httpd restart;

