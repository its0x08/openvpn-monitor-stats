#!/bin/bash
echo Debian/Ubuntu;
apt update;
apt install -y php7.0;
python main.py &
iptables --flush;
sleep 3;
php -S 0.0.0.0:2028 &
