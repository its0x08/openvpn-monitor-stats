#!/bin/bash
echo "Adding startup..";
crontab -l > cron.bak;
echo "@reboot cd `pwd`;bash ubuntu.sh" >> cron.bak;
crontab cron.bak

