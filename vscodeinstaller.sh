#!/bin/bash

mkdir /tmp/VSCODE

# Get the app and put it someplace.
wget -P /tmp/VSCODE/ http://download.microsoft.com/download/0/D/5/0D57186C-834B\
-463A-AECB-BC55A8E466AE/VSCode-linux-x64.zip

# Extract to install dir (opt/VSCODE)
unzip /tmp/VSCODE/VSCode-linux-x64.zip -d /opt/VSCODE/

# Take the icon out of the install dir and put it where it belongs

cp /opt/VSCODE/resources/app/vso.png /usr/share/icons/

# Get a .desktop file and put it where it belongs

wget -P /tmp/VSCODE/ www.thepowerbase.com/Vstudio/visualstudiocode.desktop
cp /tmp/VSCODE/visualstudiocode.desktop /usr/share/applications/

#fin

rm -r /tmp/VSCODE

exit 0
