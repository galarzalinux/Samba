#!/bin/bash
if [ $USER != root ]; then
echo "¡Is necessary be root!"
exit 0
fi
echo "################################################################################################"
echo "Installing Samba and aditional packages"
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install openssh-server
sudo apt-get install samba samba
sudo apt-get install samba samba-common
sudo apt-get install samba smbfs
sudo apt-get install libpam-smbpass
sudo apt-get install python-glade2 system-config-samba
sudo apt-get clean
sudo apt-get remove
sudo apt-get autoclean
sudo apt-get autoremove
#Uncoment the next lines if Firewall is enabled
#sudo ufw allow 139/tcp
#sudo ufw allow 445/tcp
echo "End of installation"
echo "################################################################################################"
