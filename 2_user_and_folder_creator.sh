#!/bin/bash
if [ $USER != root ]; then
echo "¡Is necessary be root!"
exit 0
fi
echo "################################################################################################"
echo "Creating Directory for share"
mkdir -p /srv/samba/share
mkdir -p /srv/samba/bbuxshare
mkdir -p /srv/samba/debugshare
sudo chown nobody.nogroup /srv/samba/share/
echo "################################################################################################"
echo "Creating First User"
sudo adduser bbux
sudo addgroup bbuxgroup
sudo adduser bbux bbuxgroup
sudo chown -R bbux:bbuxgroup /srv/samba/bbuxshare/
sudo smbpasswd -a bbux
echo "Creating Second User"
sudo adduser debug
sudo addgroup debuggroup
sudo adduser debug debuggroup
sudo chown -R debug:debuggroup /srv/samba/debugshare/
sudo smbpasswd -a debug
echo "################################################################################################"
echo "Making the Directory Writable"
cd /srv/samba/
sudo chmod -R 0777 share
sudo chmod -R 0770 bbuxshare
sudo chmod -R 0770 debugshare
echo "################################################################################################"
