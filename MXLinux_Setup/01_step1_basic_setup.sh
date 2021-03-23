#!/bin/bash
set -e
sudo apt remove lbreakout2* gnome-mahjongg peg-e swell-foop -y
sudo apt autoremove -y
sudo apt remove orage* -y
sudo apt remove libreoffice-* -y
sudo apt autoremove -y
sudo apt remove simple-scan gscan2pdf -y
sudo apt autoremove -y
sudo apt remove geany* -y
sudo apt remove galculator -y
sudo apt remove onboard* -y
sudo apt remove thunderbird -y
sudo apt autoremove -y
sudo apt remove gnome-ppp asunder xfburn -y
sudo apt autoremove -y
sudo apt remove ideviceinstaller live-kernel-updater live-usb-maker -y
sudo apt autoremove -y
sudo apt install git cmake build-essential -y

