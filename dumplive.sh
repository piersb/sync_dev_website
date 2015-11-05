#! /bin/bash 

# This lives on the remote server and is called via ssh to get a dump of the database there
# Username & Password need to be defined in (eg) ~/.sync_dev_website/FILENAME.my.cnf 
# where filename is set in the config file on the local machine (usually = sitename)
# Uncomment and fill out OWNER and chown lines if the script is being run as root, for some insane reason
# Compression requires gzip to be installed on remote machine


MYSQLCNF="/path/to/my.cnf"
DUMPFILE="/path/to/create/dumpfile.sql"
DATABASE="database"
# OWNER="owner"

mysqldump --defaults-file=$MYSQLCNF $DATABASE > "$DUMPFILE"
#chown $OWNER:$OWNER "$DUMPFILE"
