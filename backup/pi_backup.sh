#!/bin/bash
# Dono's little backup script

# Variables

export LOG="$HOME/my_scripts/backup/pi_backup.log"

#Run mount command to make sure usb is mounted
#/bin/mount

echo "Start of tar backup..."
sleep 2
cd /
tar -zcvf /tmp/pi-backup-`date +%Y-%m-%d`.tar.z ./home ./usr/src ./etc ./var/www ./var/spool/cron/crontabs ./opt/pihole ./var/log
sleep 5
cp /tmp/pi-backup-`date +%Y-%m-%d`.tar.z /media/pi/media 
#cp /tmp/pi-backup-`date +%Y-%m-%d`.tar.z /media/winshare
sleep 1
# no point in deleting, will delete on next restart anyway. 
#rm /tmp/pi-backup-`date +%Y-%m-%d`.tar.z

echo "----------------------"
echo "Done"
echo "Backup Successful: $(date)" >> $LOG
exit 0

