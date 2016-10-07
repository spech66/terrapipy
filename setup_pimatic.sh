#!/bin/sh

echo "This script will do the following:"
echo "  purge existing/old nodejs"
echo "  install latest nodejs"
echo "  install pimatic"
echo "  prompt you to modify the config"
echo "  start pimatic"

while true; do
    read -p "Do you wish to install pimatic?" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

sudo apt-get install wget

# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-which-directory-it-is-stored-in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

echo "Download an install node"
sudo wget "https://nodejs.org/dist/v4.4.5/node-v4.4.5-linux-armv7l.tar.gz" -O /tmp/node-v4.4.5-linux-armv7l.tar.gz
cd /usr/local
sudo tar xvzf /tmp/node-v4.4.5-linux-armv7l.tar.gz --strip=1

echo "Checking version of node"
/usr/bin/env node --version

echo "Installing pimatic"
# should already be there if user cloned the source
sudo apt-get install build-essential git
cd /home/pi
mkdir pimatic-app
npm install pimatic --prefix pimatic-app --production

echo "Copy config file"
cd pimatic-app
cp ./node_modules/pimatic/config_default.json ./config.json

echo "Please provide username and password in the users section"
sudo nano config.json

echo "Starting pimatic. Stop with ctrl+c"
sudo node /home/pi/pimatic-app/node_modules/pimatic/pimatic.js

echo "Installing globally"
cd ./node_modules/pimatic
sudo npm link

echo "DONE!"
echo "Use: sudo pimatic.sh [start|stop|status|restart]"
