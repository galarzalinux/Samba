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
#sudo echo "workgroup = MI CASA">>smb.conf
sudo echo "server string = Samba Server %v">>smb.conf
sudo echo "netbios name = Galarza_Samba">>smb.conf
sudo echo "security = user">>smb.conf
sudo echo "encrypt passwords = yes">>smb.conf
sudo echo "username map = /etc/samba/smbusers">>smb.conf
sudo echo "map to guest = bad user">>smb.conf
sudo echo "dns proxy = no">>smb.conf
sudo echo "#=============================== Secure User ================================= ">>smb.conf
sudo echo "[Galarza Secure]">>smb.conf
sudo echo "path = ~/Samba_Share/">>smb.conf
#sudo echo "valid users = @users">>smb.conf
#sudo echo "force group = users">>smb.conf
sudo echo "browsable =yes">>smb.conf
sudo echo "guest ok = no">>smb.conf
sudo echo "read only = no">>smb.conf
sudo echo "writable = yes">>smb.conf
sudo echo "public = no">>smb.con
sudo echo "create mask = 0777">>smb.conf
sudo echo "directory mask = 0777">>smb.conf
echo "################################################################################################"
echo "Type: sudo smbpasswd -a MY_USER to enable the password for the Samba Share for that user "
