# sync_dev_website

Bash script to duplicate a live Wordpress database on your local machine

* **dumpfile.sh** - lives on the remote machine, dumps the WP database
* **pull_assets** - pulls down all the WP assets added via users there; lives in the same directory as sync_dev_website
* **sample.config** - sample config file

Usage: sync_dev_website shortname

shortname is the name of a config file you keep in ~/.sync_dev_website/. Copy sample-config there to use as a basis for this file.
