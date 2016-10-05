#!/bin/sh

# https://forum.pimatic.org/topic/2083/v0-9-install-pimatic-v0-9-from-scratch/2
sudo pimatic.js stop
wget https://raw.githubusercontent.com/pimatic/pimatic/v0.9.x/install/pimatic-init-d
sudo cp pimatic-init-d /etc/init.d/pimatic
rm pimatic-init-d
sudo chmod +x /etc/init.d/pimatic
sudo chown root:root /etc/init.d/pimatic
sudo update-rc.d pimatic defaults

echo "You can start now with: sudo service pimatic start"
