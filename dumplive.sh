#! /bin/bash 

# This lives on the remote server and is called via ssh to get a dump of the database there
# Username & Password need to be defined in .my.cnf 

DUMPFILE="/path/to/create/dumpfile.sql"
DATABASE="database"
OWNER="owner"

mysqldump $DATABASE > "$DUMPFILE"
chown $OWNER:$OWNER "$DUMPFILE"
