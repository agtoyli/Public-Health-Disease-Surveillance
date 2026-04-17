#! /usr/bin/bash

#script for synthea implementation

#install open jdk
sudo apt-get install openjdk-17-jdk

#download latest version of synthea
wget https://github.com/synthetichealth/synthea/releases/latest/download/synthea-with-dependencies.jar

#create synthea and move jar file
mkdir synthea
mv synthea-with-dependencies.jar synthea/
cd synthea

#generate covid simulation messages
echo "Enter city name:"
read -r city_name
java -jar synthea-with-dependencies.jar -p 20 Michigan "$city_name" --config covid19

