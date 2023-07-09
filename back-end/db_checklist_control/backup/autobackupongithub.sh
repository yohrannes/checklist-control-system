#!/bin/bash
rm -f /var/lib/jelastic/backup/db_checklistcontrol*
/var/lib/jelastic/bin/backup_script.sh -m dump -c 15 -u root -p FLCkbq45934 -d db_checklistcontrol
cp /var/lib/jelastic/backup/db_checklistcontrol* /root/checklist-control-system/back-end/db_checklist_control/backup
cd /root/checklist-control-system/back-end/db_checklist_control/backup
git add --all 
git commit -am "Automated backup"
git push origin develop
