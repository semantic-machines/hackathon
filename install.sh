echo INSTALL VEDA
wget https://github.com/semantic-machines/veda/releases/download/v5.4.6/Veda-x86_64.AppImage
chmod u+x Veda-x86_64.AppImage
./Veda-x86_64.AppImage
./install-tools/install-dbs.sh
./install-tools/install-haproxy.sh
./control-start.sh
echo INSTALL HACKATON PROJECT
wget https://github.com/semantic-machines/hackathon/archive/master.zip
unzip master.zip
rm master.zip
cp -r hackathon-master/onto/LNG ontology