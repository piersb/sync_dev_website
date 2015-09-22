#! /bin/bash 

# This lives on the remote server and is called via ssh to get a dump of the database there

DUMPFILE="/path/to/create/dumpfile.sql"
USER="user"
PASS="pass"
DATABASE="database"
OWNER="owner"

mysqldump -$USER -p$PASS $DATABASE > "$DUMPFILE"
chown $OWNER:$OWNER "$DUMPFILE"
