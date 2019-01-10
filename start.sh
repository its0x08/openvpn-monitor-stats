#!/bin/bash
cp ./index.php /var/www/html/;
cp ./main.py /var/www/html/;
> /var/www/html/stats.txt;
python /var/www/html/main.py & 
iptables --flush;
sudo yum install -y httpd php;
sudo service httpd start;
sudo chkconfig httpd on;
sudo service httpd restart;

