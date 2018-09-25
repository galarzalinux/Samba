#!/bin/bash
if [ $USER == root ]; then
echo "¡Is necessary not to be root!"
exit 0
fi
echo "################################################################################################"
echo "Creating Directory for share folder"
mkdir -p ~/Samba_Share/
echo "################################################################################################"
echo "Making the Directory Writable"
cd ~/
chmod -R 0777 ~/Samba_Share/
echo "################################################################################################"
