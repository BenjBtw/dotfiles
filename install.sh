#!/bin/bash

# Update the system
sudo apt-get update

# Download required packages
sudo apt-get install htop cmatrix tor tor-arm rofi i3 lolcat cowsay feh xcompmgr figlet vim

# Download tewi-font and install
git clone https://www.github.com/lucy/tewi-font.git
cd tewi-font
make
cd out/
sudo cp * /usr/share/fonts/

# Installing the font
sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf
sudo fc-cache -f -v

echo " Tewi has been installed "

# Installing i3 gaps
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

sudo apt-get install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf
echo " i3 gaps has been downloaded "
