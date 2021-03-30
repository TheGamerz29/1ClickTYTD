#!/data/data/com.termux/files/usr/bin/bash
# Installer for 1ClickTYTD
# Created by StarFromTheSky
# Licensed under GNU GPL 3.0

echo -e "Checking and installing required package for installer..." 
apt install -y ruby &> 1clickins.log && gem install lolcat
apt install figlet -y &> 1clickins.log
clear
sleep 5

figlet Installing
figlet Dependancies | lolcat
figlet ffmpeg | lolcat && echo "Installing..." 
apt update &> 1clickins.log&& apt -y upgrade &> 1clickins.log
yes | pkg install ffmpeg &> 1clickins.log

echo -e "Requesting access to storage\n"
termux-setup-storage
sleep 5

figlet Python | lolcat && echo "Installing... " 
pkg install -y python &> 1clickins.log

figlet Youtube-DL | lolcat && echo "Installing... " 
yes | pip install youtube-dl &> 1clickins.log

echo -e "Creating youtube-dl folder for config\n"
mkdir -p ~/.config/youtube-dl

echo -e "Creating bin folder\n"
mkdir ~/bin

figlet 1ClickTYTD | lolcat && echo "Installing..." 
mv termux-url-opener ~/bin/
dos2unix ~/bin/termux-url-opener &> 1clickins.log
