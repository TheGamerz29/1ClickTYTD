#!/data/data/com.termux/files/usr/bin/bash
# Installer for 1ClickTYTD
# Created by StarFromTheSky
# Licensed under GNU GPL 3.0

echo -e "    ____                      __                ___            "  
echo -e "   / __ \____ _      ______  / /___  ____ _____/ (_)___  ____ _  "
echo -e "  / / / / __ \ | /| / / __ \/ / __ \/ __ `/ __  / / __ \/ __ `/  "
echo -e " / /_/ / /_/ / |/ |/ / / / / / /_/ / /_/ / /_/ / / / / / /_/ /   "
echo -e "/_____/\____/|__/|__/_/ /_/_/\____/\__,_/\__,_/_/_/ /_/\__, /    "
echo -e "    ____                            __                /____/     "
echo -e "   / __ \___  ____  ___  ____  ____/ /__  ____  _____(_)__  _____"
echo -e "  / / / / _ \/ __ \/ _ \/ __ \/ __  / _ \/ __ \/ ___/ / _ \/ ___/"
echo -e " / /_/ /  __/ /_/ /  __/ / / / /_/ /  __/ / / / /__/ /  __(__  ) "
echo -e "/_____/\___/ .___/\___/_/ /_/\__,_/\___/_/ /_/\___/_/\___/____/  "
echo -e "          /_/                                                    "
echo
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

echo -e "Installing 1ClickTYTD\n"
mv termux-url-opener ~/bin/
dos2unix ~/bin/termux-url-opener
