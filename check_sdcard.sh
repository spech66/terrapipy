#!/bin/sh

# https://github.com/pimatic/pimatic/issues/497
awk '{print "Writes to SD card: "$7}' /sys/block/mmcblk0/stat
echo "Read how to configure db: https://forum.pimatic.org/topic/44/database-configuration-howto"
