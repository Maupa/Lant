#!/usr/bin/env bash

#remove juju
sudo apt-get -y remove juju*
sudo cat /dev/null > /etc/update-motd.d/98-cloudguest

#Updating and instaling depencies
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install git vim

#Installing XAMPP
wget "http://downloads.sourceforge.net/project/xampp/XAMPP%20Linux/1.8.3/xampp-linux-x64-1.8.3-5-installer.run" -O xampp.run
chmod +x "xampp.run"
sudo ./xampp.run --mode unattended

#Ownership fix for htdocs
sudo chown -R vagrant:vagrant /opt/lampp/htdocs/

#Security config fix for XAMPP
sudo wget "https://gist.githubusercontent.com/herrniemand/364490075d2f54eb8bfe/raw/e3f90120c5f973d7021efa61c6110a29590be9a9/httpd-xampp.conf" -O /opt/lampp/etc/extra/httpd-xampp.conf

#Add startup script
sudo cat <<EOT >> /etc/init.d/vagrant_startup
#!/usr/bin/env bash
sudo /opt/lampp/lampp start
EOT
sudo chmod +x /etc/init.d/reboot_setup
sudo update-rc.d reboot_setup defaults

#Message to reboot.
echo "################################"
echo "#                              #"
echo "#  You VM requires reboot      #"
echo "#         Please run           #"
echo "#  vagrant halt && vagrant up  #"
echo "#                              #"
echo "################################"