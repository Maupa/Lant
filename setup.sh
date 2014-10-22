#!/usr/bin/env bash

#remove juju
sudo apt-get -y remove juju*
sudo rm /etc/update-motd.d/98-cloudguest

#updating and instaling depencies
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install git vim

#installing XAMPP
wget "http://downloads.sourceforge.net/project/xampp/XAMPP%20Linux/1.8.3/xampp-linux-x64-1.8.3-5-installer.run" -O xampp.run
chmod +x "xampp.run"
sudo ./xampp.run --mode unattended

#Ownership fix for htdocs
sudo chown -R vagrant:vagrant /opt/lampp/htdocs/

#Add startup script
sudo cat <<EOT >> /etc/init.d/vagrant_startup
#!/usr/bin/env bash
sudo /opt/lampp/lampp start
EOT
sudo chmod +x /etc/init.d/vagrant_startup
sudo update-rc.d vagrant_startup defaults

#server start
sudo /opt/lampp/lampp start