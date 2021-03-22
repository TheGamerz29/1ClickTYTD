#!/data/data/com.termux/files/usr/bin/bash
# Installer for 1ClickTYTD
# Created by StarFromTheSky
# Licensed under GNU GPL 3.0

echo -e "Updating default packages\n"
apt update && apt -y upgrade
yes | pkg install ffmpeg

echo -e "Requesting access to storage\n"
termux-setup-storage
sleep 5

echo -e "Installing python\n"
pkg install -y python

echo -e "Installing youtube-dl\n"
yes | pip install youtube-dl

echo -e "Creating youtube-dl folder for config\n"
mkdir -p ~/.config/youtube-dl

echo -e "Creating bin folder\n"
mkdir ~/bin

echo -e "Downloading and installing termux-url-opener\n"
mv termux-url-opener ~/bin/
dos2unix ~/bin/termux-url-opener