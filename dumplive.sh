#! /bin/bash 

# This lives on the remote server and is called via ssh to get a dump of the database there
# Username & Password need to be defined in SITENAME.my.cnf 

DUMPFILE="/var/lib/mysql/dumpfile.sql"
DATABASE="stage_dezeen_live"

mysqldump --defaults-file="/var/lib/mysql/.sync_dev_website/$1.my.cnf" $DATABASE > "$DUMPFILE"