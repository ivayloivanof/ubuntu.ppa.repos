#!/bin/bash

cd /tmp

read -p "Do you want to change permision now for special own DIRECTORY? (y,n)" 
if [ "$REPLY" == "y" ] || [ "$REPLY" == "Y" ]; then
  # Control will enter here if $DIRECTORY exists.
  sudo chown $USER:root /data /data0 /data1 /data2 /data3 /doc /server /torrent
  sudo chmod 775 /data /data0 /data1 /data2 /data3 /doc /server /torrent
fi

read -p "Do you want to change permision now for /opt and /var/www DIRECTORY? (y,n)" 
if [ "$REPLY" == "y" ] || [ "$REPLY" == "Y" ]; then
  # Control will enter here if $DIRECTORY exists.
  sudo chown root:$USER /opt /var/www
  sudo chmod 775 /opt /var/www
fi

sudo apt-get update
sudo apt-get -y upgrade

#System
echo "Install Ubuntu Restricted Extras"
sudo apt-get -y install ubuntu-restricted-extras
 
#Programming tools
echo "Install other Programming tools"
sudo apt-get -y install build-essentials ghc \
  ldc gdc curl npm scala valgrind \
  clang nasm cabal-install oracle-java8-installer

#Libraries
echo "Install other Libraries"
sudo apt-get -y install libreadline-dev libpq-dev 
 
#Utils
echo "Install Utils"
sudo apt-get -y install \
  curl samba vim-gnome git \
  shutter preload lxc-docker nethogs moreutils \
  quemu fortunes spotify hipchat fish preload \
  tlp tlp-rdw rar google-chrome google-talkplugin \
  pipelight-multi libavcodec-extra nvidia-prime \
  prime-indicator jayatana apt-fast indicator-cpufreq \
  vlc rar unity-tweak-tool gnome-tweak-tool

#Common Codecs And Enable DVD playback
sudo apt-get install -y gstreamer0.10-plugins-ugly gxine libdvdread4 totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 mpg321 gstreamer1.0-libav
sudo /usr/share/doc/libdvdread4/./install-css.sh

#Enable Flash Support On Browsers
sudo apt-get install -y flashplugin-installer

#Unity Tweak Tool to change Themes & Icons
sudo apt-get install -y unity-tweak-tool

#Install Monochrome icons for Libreoffice
sudo apt-get install -y libreoffice-style-sifr

#FileZilla
sudo apt-get install -y filezilla

#Compiz
sudo apt-get install -y compiz compizconfig-settings-manager compiz-plugins

#Hackertray
sudo apt-get install -y python-appindicator python-pip
sudo pip install -y hackertray

#Wine PPA
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
#sudo apt-get install wine

#SMPlayer
sudo add-apt-repository -y ppa:rvm/smplayer
#sudo apt-get install smplayer

#Ubuntu After Install
sudo add-apt-repository -y ppa:thefanclub/ubuntu-after-install
#sudo apt-get install ubuntu-after-install

#Wordpress
sudo add-apt-repository -y ppa:wordpress/ppa
#sudo apt-get install wordpress

#Blubphone
sudo add-apt-repository -y ppa:markus-lanner/blubphone
#sudo apt-get install blubphone

#MyAgenta
sudo add-apt-repository -y ppa:piotr-zagawa/ma2
#sudo apt-get install myagenda

#Sublime Text 3 PPA
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
#sudo apt-get install sublime-text-installer

#Nitroshape
sudo add-apt-repository -y ppa:george-edison55/nitroshare
#sudo apt-get install nitroshare

#Openshot video editor
sudo add-apt-repository -y ppa:openshot.developers/ppa
#sudo apt-get install openshot openshot-doc

#Tor-Browser
sudo add-apt-repository -y ppa:webupd8team/tor-browser
#sudo apt-get install tor-browser

sudo add-apt-repository -y ppa:snwh/pulp
#sudo apt-get install paper-gtk-theme

sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
#sudo apt-get install ubuntu-make

#Android Studio
sudo add-apt-repository -y ppa:paolorotolo/android-studio
#sudo apt-get install android-studio

#Y PPA Manager
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
#sudo apt-get install y-ppa-manager

#Java
sudo add-apt-repository -y ppa:webupd8team/java
#sudo apt-get install oracle-java7-installer
#sudo apt-get install openjdk-7-jdk

#Variety - wallpaper changer
sudo add-apt-repository -y ppa:peterlevi/ppa
#sudo apt-get install variety 

#TimeShift - System Restore
sudo apt-add-repository -y ppa:teejee2008/ppa
#sudo apt-get update
#sudo apt-get install timeshift

#Docky
sudo add-apt-repository -y ppa:docky-core/ppa
#sudo apt-get install docky

#The Mac OS X Lion theme
sudo add-apt-repository -y ppa:noobslab/themes
#sudo apt-get install mac-ithemes-v3
#sudo apt-get install mac-icons-v3

#MacBuntu theme for LightDM
sudo add-apt-repository -y ppa:noobslab/themes
#sudo apt-get install mbuntu-lightdm-v3

#Indicator Synapse
sudo add-apt-repository -y ppa:noobslab/apps
sudo add-apt-repository -y ppa:noobslab/indicators
#sudo apt-get install indicator-synapse

#Gambas 3
sudo apt-add-repository -y ppa:nemh/gambas3
#sudo apt-get install gambas3

#Ubuntu Tweak
sudo add-apt-repository -y ppa:tualatrix/ppa
#sudo apt-get install -y ubuntu-tweak

#PHP 5.5, PECL
sudo add-apt-repository -y ppa:ondrej/php5
sudo add-apt-repository -y ppa:sergey-dryabzhinsky/php55-modules
sudo add-apt-repository -y ppa:iacobs/pecl
#sudo apt-get install -y php5

#Apache2
sudo add-apt-repository -y ppa:ondrej/apache2
#sudo apt-get install -y apache2

#MySQL 5.6
sudo add-apt-repository -y ppa:ondrej/mysql-5.6
#sudo apt-get install -y mysql-server

#MySQL Workbench
sudo add-apt-repository -y ppa:olivier-berten/misc
#sudo apt-get install -y mysql-workbench

#NetBeans
sudo add-apt-repository -y ppa:vajdics/netbeans-installer
#sudo apt-get install -y netbeans-installer

#GOpenVPN
sudo add-apt-repository -y ppa:gopenvpn/gopenvpn
#sudo apt-get install -y gopenvpn

#Backports
sudo add-apt-repository -y ppa:yofel/backports
sudo add-apt-repository -y ppa:asolovets/backports

#Backports LibreOffice
sudo add-apt-repository -y ppa:bdcomp/backports

#PostgreSQL
sudo add-apt-repository -y ppa:flexiondotorg/postgres 

#Android Security
sudo add-apt-repository -y ppa:aduroideja/androidsecurity

#WebUpd8
sudo add-apt-repository -y ppa:nilarimogard/webupd8

#Qemu and Other virtualization Software
sudo add-apt-repository -y ppa:9v-shaun-42/qemu
sudo add-apt-repository -y ppa:xespackages/virtualization
sudo add-apt-repository -y ppa:serge-hallyn/virt 

#Sensors
sudo add-apt-repository ppa:alexmurray/indicator-sensors
#sudo apt-get install -y indicator-sensors

#Brightness Indicator
sudo add-apt-repository -y ppa:indicator-brightness/ppa
#sudo apt-get install -y indicator-brightness

#Classic Menu Indicator
sudo add-apt-repository -y ppa:diesch/testing
#sudo apt-get install -y classicmenu-indicator

#My-Weather Indicator
sudo add-apt-repository -y ppa:atareao/atareao
#sudo apt-get install -y my-weather-indicator

echo "Updating Repository Cache"
sudo apt-get update

sudo apt-get install -y ubuntu-after-install
sudo apt-get install -y myagenda
sudo apt-get install -y nitroshare
sudo apt-get install -y openshot openshot-doc
sudo apt-get install -y tor-browser
sudo apt-get install -y android-studio
sudo apt-get install -y y-ppa-manager
sudo apt-get install -y oracle-java7-installer
sudo apt-get install -y openjdk-7-jdk
sudo apt-get install -y variety
sudo apt-get install -y timeshift
sudo apt-get install -y docky
sudo apt-get install -y mac-ithemes-v3
sudo apt-get install -y mac-icons-v3
sudo apt-get install -y mbuntu-lightdm-v3
sudo apt-get install -y indicator-synapse
sudo apt-get install -y gambas3
sudo apt-get install -y ubuntu-tweak
sudo apt-get install -y apache2
sudo apt-get install -y php5
sudo apt-get install -y mysql-server
sudo apt-get install -y mysql-workbench
sudo apt-get install -y netbeans-installer
sudo apt-get install -y gopenvpn
sudo apt-get install -y indicator-sensors
sudo apt-get install -y indicator-brightness
sudo apt-get install -y classicmenu-indicator
sudo apt-get install -y my-weather-indicator

#Replace Overlay Scroll-bars with Normal
gsettings set com.canonical.desktop.interface scrollbar-mode normal

#Install Composer
read -p "Install Composer now!"
#sudo curl -sS https://getcomposer.org/installer | php
#sudo mv composer.phar /usr/local/bin/composer
#sudo chown root:$USER /usr/local/bin/
#sudo chmod 775 /usr/local/bin/composer

echo "Cleaning Up" &&
sudo apt-get -f install &&
sudo apt-get autoremove &&
sudo apt-get -y autoclean &&
sudo apt-get -y clean

# Exiting script
echo "All done."
exit
