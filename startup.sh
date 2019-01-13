#!/bin/bash
echo "Adding startup..";
crontab -l > cron.bak;
echo "@reboot `pwd`/centos.sh" >> cron.bak;
crontab cron.bak

