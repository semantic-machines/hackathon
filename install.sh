#!/bin/bash
echo INSTALL VEDA
wget https://github.com/semantic-machines/veda/releases/download/v5.4.6/Veda-x86_64.AppImage
chmod u+x Veda-x86_64.AppImage
./Veda-x86_64.AppImage
echo INSTALL DBs
./install-tools/install-dbs.sh
echo INSTALL HAPROXY
./install-tools/install-haproxy.sh
sudo cp -i ./install-tools/haproxy.cfg /etc/haproxy
echo INSTALL HACKATON PROJECT
cp public/index.html 
./control-start.sh
pause 30
wget https://github.com/semantic-machines/hackathon/archive/master.zip
unzip master.zip
rm master.zip
cp hackathon-master/public/index.html public
cp hackathon-master/ontology/config.ttl ontology
cp -r hackathon-master/ontology/LNG ontology
