#!/bin/bash
#
#  Set this cron job in the sudo crontab by calling
#
#             sudo crontab -e
#
#  and then adding the line:
#
#  */5 * * * * /var/www/cron_job_to_update_encounter_git_clones.sh
#
#
#

cd /var/www/LearningEncounters

for i in *
do
   cd $i
   git pull origin master
done
