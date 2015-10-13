#! /bin/bash 

# This lives on the remote server and is called via ssh to get a dump of the database there
# Username & Password need to be defined in .my.cnf 
# Uncomment and fill out OWNER and chown lines if the script is being run as root, for some insane reason

DUMPFILE="/path/to/create/dumpfile.sql"
DATABASE="database"
# OWNER="owner"

mysqldump $DATABASE > "$DUMPFILE"
# chown $OWNER:$OWNER "$DUMPFILE"
