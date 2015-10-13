#! /bin/bash 

# This lives on the remote server and is called via ssh to get a dump of the database there
# Username & Password need to be defined in .my.cnf 
# Uncomment and fill out OWNER and chown lines if the script is being run as root, for some insane reason
# Compression requires gzip to be installed on remote machine


DUMPFILE="/path/to/create/dumpfile.sql"
DATABASE="database"
# OWNER="owner"

while getopts "z" opt; do
  case $opt in
    z)
      compression=true
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ex
      ;;
  esac
done

if [ "$compression" = "true" ]; then
	mysqldump $DATABASE | gzip > "$DUMPFILE" 
else
	mysqldump $DATABASE > "$DUMPFILE"
fi



# chown $OWNER:$OWNER "$DUMPFILE"
