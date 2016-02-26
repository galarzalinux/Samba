#!/bin/bash
if [ $USER != root ]; then
echo "¡Is necessary be root!"
exit 0
fi
echo "################################################################################################"
echo "Restarting Samba"
sudo service smbd restart
sudo service nmbd restart
echo "################################################################################################"