#!/bin/bash
if [ $USER != root ]; then
echo "¡Is necessary be root!"
exit 0
fi
echo "################################################################################################"
echo "Installing Samba and aditional packages"
sudo apt-get update
sudo apt-get install openssh-server
sudo apt-get install samba samba
sudo apt-get install samba samba-common
sudo apt-get install samba smbfs
sudo apt-get install libpam-smbpass
sudo apt-get install python-glade2 system-config-samba
#sudo apt-get upgrade
echo "End of installation"
echo "################################################################################################"