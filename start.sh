#!/bin/bash

if [ `which apt-get` = "/usr/bin/apt-get" ]; then
        echo Debian/Ubuntu;
        apt update;
        apt install -y php7.0;
        python main.py &
        iptables --flush;
        sleep 3;
        php -S 0.0.0.0:2028 &
elif [`which yum` = "/usr/bin/apt-get"]; then
        echo CentOS/RedHat;
        python main.py &
        iptables --flush;
        rpm -Uvh http://mirror.webtatic.com/yum/el6/latest.rpm;
        yum remove -y php-common;
        yum install -y php56w php56w-mysql php56w-common php56w-pdo php56w-opcache;
        sleep 3;
        php -S 0.0.0.0:2028 &
fi
