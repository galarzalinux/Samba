#!/bin/bash
if [ $USER != root ]; then
echo "¡Is necessary be root!"
exit 0
fi
echo "################################################################################################"
echo "Creating Directory for share"
mkdir -p ~/My_Drive/
echo "################################################################################################"
echo "Making the Directory Writable"
cd ~/
chmod -R 0777 ~/My_Drive/
echo "################################################################################################"
