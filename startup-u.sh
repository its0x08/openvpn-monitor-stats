#!/bin/bash
echo "Adding startup..";
crontab -l > cron.bak;
echo "@reboot `pwd`/ubuntu.sh" >> cron.bak;
crontab cron.bak

