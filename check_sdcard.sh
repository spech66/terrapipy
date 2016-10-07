#!/bin/sh

curdate=`date --rfc-3339=seconds`
upt=`uptime`
data=`awk '{print "Writes to SD card: "$7}' /sys/block/mmcblk0/stat`

# https://github.com/pimatic/pimatic/issues/497
echo $data
echo "Read how to configure db: https://forum.pimatic.org/topic/44/database-configuration-howto"
echo "$curdate $data $upt" >> check_sdcard.log
