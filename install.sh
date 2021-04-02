#!/data/data/com.termux/files/usr/bin/bash
# Installer for 1ClickTYTD
# Created by StarFromTheSky
# Licensed under GNU GPL 3.0

echo -e "Checking and installing required package for installer..." 
apt install -y ruby &> 1clickins.log && gem install lolcat &> 1clickins2.log
apt install figlet -y &> 1clickins3.log
clear

figlet Installing
figlet Dependancies | lolcat
figlet ffmpeg | lolcat && echo "Installing..." 
apt update &> 1clickins4.log && apt -y upgrade &> 1clickins5.log
yes | pkg install ffmpeg &> 1clickins6.log
figlet Done | lolcat
clear

echo -e "Requesting access to storage\n"
termux-setup-storage
sleep 5
clear

figlet Python | lolcat && echo "Installing... " 
pkg install -y python &> 1clickins7.log
figlet Done | lolcat
clear

figlet Youtube-DL | lolcat && echo "Installing... " 
yes | pip install youtube-dl &> 1clickins8.log
figlet Done | lolcat
clear

echo -e "Creating youtube-dl folder for config\n"
mkdir -p ~/.config/youtube-dl

echo -e "Creating bin folder\n"
mkdir ~/bin

figlet 1ClickTYTD | lolcat && echo "Installing..." 
mv termux-url-opener ~/bin/
cat 1clickins2.log >> 1clickins.log
cat 1clickins3.log >> 1clickins.log
cat 1clickins4.log >> 1clickins.log
cat 1clickins5.log >> 1clickins.log
cat 1clickins6.log >> 1clickins.log
cat 1clickins7.log >> 1clickins.log
cat 1clickins8.log >> 1clickins.log
dos2unix ~/bin/termux-url-opener &> 1clickins9.log
cat 1clickins9.log >> 1clickins.log
rm -rf 1clickins2.log 1clickins3.log 1clickins4.log
rm -rf 1clickins5.log 1clickins6.log 1clickins7.log
rm -rf 1clickins8.log 1clickins9.log
clear
figlet 1ClickTYTD is now ready! | lolcat
