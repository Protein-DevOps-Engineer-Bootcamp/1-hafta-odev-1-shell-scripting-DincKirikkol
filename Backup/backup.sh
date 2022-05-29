#!/bin/sh
######################################################### 
#                       CONTACT                         #
#########################################################
#              DEVELOPER : Dinc Kırıkkol                #                       
#           GMAIL : d.kirikkol@icloud.com               #
# Linkedin : https://www.linkedin.com/in/dinckirikkol   #
#########################################################

## Load Config File ##

source /home/dinc/backup/backup.conf 

NOW=$(date +"%m%d%Y_%H%M")
HOSTNAME=$(hostname -s)
ARCHIVE_FILE="${HOSTNAME}_${NOW}.tar.gz"

tar -czf $DEST_DIR/$ARCHIVE_FILE $BACKUP_DIRS

md5sum --tag $DEST_DIR/$ARCHIVE_FILE > $DEST_DIR/$ARCHIVE_FILE.md5.txt

echo "Yedekeleme_Scripti_Calisma_Saati_$NOW" >> /tmp/backup_logs.txt

