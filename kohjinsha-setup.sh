#!/bin/bash
# This script sets up Crunchbang system to use on Kohjinsha SC3-VHB
# Please run as root when all drivers are installed

# CHANGE THIS TO YOUR HOME DIRECTORY !!!
HOME="/home/daneos"

# black screen after resume fix
echo "ADD_PARAMETERS='-quirk-vbemode-restore'" > /etc/pm/config.d/gma500

# get bluetooth applet working
apt-get install blueman
echo "## Start bluetooth applet (blueman)" >> $HOME/.config/openbox/autostart
echo "(sleep 2s && blueman-applet) &" >> $HOME/.config/openbox/autostart

# enable a2dp
apt-get install pulseaudio-module-bluetooth

# disable F10 hotkey
cp gtkrc-2.0 $HOME/.gtkrc-2.0.mine
