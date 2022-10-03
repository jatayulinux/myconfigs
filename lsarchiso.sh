#!/usr/bin/bash

echo -e "enter archfolder path"
read a

################### to enable gpm.service

mkdir -p /home/"$(whoami)"/$a/airootfs/etc/systemd/system/multi-user.target.wants
ln -s /usr/lib/systemd/system/gpm.service /home/"$(whoami)"/$a/airootfs/etc/systemd/system/multi-user.target.wants/


################# sddm Login manager

ln -s /usr/lib/systemd/system/sddm.service /home/"$(whoami)"/$a/airootfs/etc/systemd/system/display-manager.service

