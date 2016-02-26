#!/bin/bash
if [ $USER != root ]; then
echo "¡Is necessary be root!"
exit 0
fi
echo "################################################################################################"
echo "Backing up default config of samba"
sudo mv /etc/samba/smb.conf /etc/samba/smb.conf.bak
sudo touch /etc/samba/smb.conf
sudo chmod 0666 /etc/samba/smb.conf
echo "################################################################################################"
echo "Inserting settings to the file smb.conf"
cd /etc/samba/
sudo echo "#======================= Global Settings ===================================== ">>smb.conf
sudo echo "[global]">>smb.conf
sudo echo "workgroup = AMR">>smb.conf
sudo echo "server string = Samba Server %v">>smb.conf
sudo echo "netbios name = GalarzaServer">>smb.conf
sudo echo "security = user">>smb.conf
sudo echo "username map = /etc/samba/smbusers">>smb.conf
sudo echo "map to guest = bad user">>smb.conf
#sudo echo "dns proxy = http://proxy-chain.intel.com:911">>smb.conf
sudo echo "dns proxy = no">>smb.conf
sudo echo "#============================ Share Definitions ============================== ">>smb.conf
sudo echo "[Share Folder]">>smb.conf
sudo echo "path = /srv/samba/share">>smb.conf
sudo echo "browsable =yes">>smb.conf
sudo echo "guest ok = yes">>smb.conf
sudo echo "read only = no">>smb.conf
sudo echo "writable = yes">>smb.conf
sudo echo "create mask = 0777">>smb.conf
sudo echo "directory mask = 0777">>smb.conf
sudo echo "#=============================== Secure User ================================= ">>smb.conf
sudo echo "[BBUX Folder]">>smb.conf
sudo echo "path = /srv/samba/bbuxshare">>smb.conf
sudo echo "valid users = bbux">>smb.conf
sudo echo "browsable =yes">>smb.conf
sudo echo "guest ok = no">>smb.conf
sudo echo "read only = no">>smb.conf
sudo echo "writable = yes">>smb.conf
sudo echo "create mask = 0750">>smb.conf
sudo echo "directory mask = 0750">>smb.conf
sudo echo "#============================== Secure User 2================================= ">>smb.conf
sudo echo "[Debug Folder]">>smb.conf
sudo echo "path = /srv/samba/debugshare">>smb.conf
sudo echo "valid users = debug">>smb.conf
sudo echo "browsable =yes">>smb.conf
sudo echo "guest ok = no">>smb.conf
sudo echo "read only = no">>smb.conf
sudo echo "writable = yes">>smb.conf
sudo echo "create mask = 0750">>smb.conf
sudo echo "directory mask = 0750">>smb.conf
echo "################################################################################################"
