# TerraPiPy ![Logo](https://github.com/spech66/terrapipy-web/blob/master/images/logo.png)
TerraPiPy is a collection of different projects to create easy to use tools for terrarium/aquarium/vivarium control and **automation** for the Raspberry Pi. TerraPiPy is short for "Terrarium + Raspberry Pi + Python" because snakes are cool (and some parts are written in Python).
The system can be run on a Raspberry Pi to setup, monitor and **control** [pimatic](https://github.com/pimatic/pimatic) to use many terrariums, aquariums and vivariums. A website is provided as a dashboard and the info tool provides data providers for other systems.

:sunny: :cloud: :crescent_moon: :arrow_right: :zap: :arrow_right: :snake: :tropical_fish: :turtle: :frog: :arrow_right: :heart_eyes:

# TerraPiPy Core, TerraPiPy Web and TerraPiPy Info
**[TerraPiPy Core](https://github.com/spech66/terrapipy)** or just TerraPiPy is a collection of tools, pre defines configurations and articles for best practices to geht pimatic up and running. Optionally **[TerraPiPy Web](https://github.com/spech66/terrapipy-web)** shows the data on a beautiful **website**.

# Features of TerraPiPy Core
TerraPiPy is the installation/maintenance/control part of the system. It helps to get pimatic running and monitors it to keep your pets happy.
* **Collect** sensor data (Temperature, humidity, weather, lights, ...)
* Multiple sensors and actuactors for every terrarium
* Control switches and other **actuators**
* Send **notifications** on warnings and errors (temperature to high, ...)
* **Log** all data

# Installation
Currently I work at high preasure to get this done :smile:

    sudo apt-get install build-essential git
    cd /home/pi
    git clone https://github.com/spech66/terrapipy.git terrapipy
    
Install pimatic 0.9 using the instructions from the [pimatic forum](https://forum.pimatic.org/topic/2083/v0-9-install-pimatic-v0-9-from-scratch) or use the TerraPiPy setup script.

    cd terrapipy
    ./setup_pimatic.sh
    ./setup_autostart.sh

The setup script will put the installation to */home/pi/pimatic-app/*.  
Very soon here will be some tutorials and init scripts for a good terrarium configuration.

# Sensors
There are many sensors supported by pimatic. Some of them are listed below.
* DS18B20 Digital Temperature Sensor
* AM2302 Digital Temperature and Humidity Sensor
* DHT22 Digital Temperature and Humidity Sensor
* DHT11 Digital Temperature and Humidity Sensor*
* ...

# Actuators
There are many actuators supported by pimatic. Some possible types are listed below.
* RF Switch with Radio frequency (RF) transceiver
* EG-PMS2 EnerGenie Programmable surge protector
* ...
