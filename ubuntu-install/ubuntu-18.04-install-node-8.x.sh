#!/bin/bash

#----------------------------------------------------------#
#                     Variables                            #
#----------------------------------------------------------#

echo -e "\n===== Welcome to Shell Files ========================\n"

# Am I root?
if [ "x$(id -u)" != 'x0' ]; then
    echo 'Error: this script can only be executed by root'
    exit 1
fi

#----------------------------------------------------------#
#                 Install packages                     	   #
#----------------------------------------------------------#

# Let's start
echo -e "\nDowloading ..."
echo -e "======================================================\n"
cd ~
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

echo -e "\nInstall ..."
echo -e "======================================================\n"
sudo apt-get install nodejs build-essential -y

echo -e "\nShow info"
echo -e "======================================================\n"
sudo node -v

#----------------------------------------------------------#
#                 Goodbye                     	           #
#----------------------------------------------------------#

echo -e "\n===== Goodbye ========================================"
