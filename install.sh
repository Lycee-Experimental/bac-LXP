#!/bin/bash
sudo apt remove wkhtmltopdf
wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.jammy_amd64.deb
sudo dpkg -i wkhtmltox_0.12.6.1-2.jammy_amd64.deb
rm wkhtmltox_0.12.6.1-2.jammy_amd64.deb
sudo apt install -y python3 python3-pip python3-pyqt5 chromium-browser
pip3 install pdfkit pandas selenium markdown
sudo mkdir -p /opt/bac-LXP

sudo wget https://raw.githubusercontent.com/Lycee-Experimental/bac-LXP/main/logo.svg -O /opt/bac-LXP/logo.svg
sudo wget https://raw.githubusercontent.com/Lycee-Experimental/bac-LXP/main/styles.css -O /opt/bac-LXP/styles.css
sudo wget https://raw.githubusercontent.com/Lycee-Experimental/bac-LXP/main/icon.png -O /opt/bac-LXP/icon.png
sudo chmod 644 /opt/bac-LXP/icon.png
sudo wget https://raw.githubusercontent.com/Lycee-Experimental/bac-LXP/main/script.py -O /opt/bac-LXP/script.py
sudo chmod +x /opt/bac-LXP/script.py

sudo echo """[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Terminal=false
Exec=python3 /opt/bac-LXP/script.py
Name=bac-LXP
Icon=/opt/bac-LXP/icon.png""" | sudo tee /usr/share/applications/bac-LXP.desktop
