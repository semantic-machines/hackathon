#!/bin/bash
echo INSTALL VEDA
wget https://github.com/semantic-machines/veda/releases/download/v5.4.6/Veda-x86_64.AppImage
chmod u+x Veda-x86_64.AppImage
./Veda-x86_64.AppImage
cd install-tools
echo INSTALL DBs
./install-dbs.sh
echo INSTALL HAPROXY
sudo cp -v haproxy.cfg /etc/haproxy
./install-haproxy.sh
cd ..
echo START VEDA
./control-start.sh
pause 60
echo INSTALL HACKATON PROJECT
wget https://github.com/semantic-machines/hackathon/archive/master.zip
unzip master.zip
rm master.zip
cp -v hackathon-master/public/index.html public
cp -v hackathon-master/ontology/config.ttl ontology
cp -v -r hackathon-master/ontology/LNG ontology
