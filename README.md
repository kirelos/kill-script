# kill-script

This script will kill any process gets over than 500% of cpu percentage (You can change the percentage).

# Installation Steps

* git clone in /opt
* cd /opt/kill-script/
* chmod +x kill-script.sh
* crontab -e

add the following line to run every 15 minutes
* */15 * * * * /opt/kill-script/./kill-script.sh

# Logging
This script will log what it does in /var/log/kill-script.log
