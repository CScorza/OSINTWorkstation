#!/bin/bash


###### Setting UBUNTU lang.IT
###### Versione Script  v1.0 01/2023
###### Prima dello script mettere lingua keyboard IT
###### Prima di eseguire questo script leggere il file LEGGIMI.txt



###################################################################################################################################
sudo apt-add-repository -y ppa:black-sheep-wall/cowsay-offtopic
sudo apt-get update
sudo apt-get install cowsay
echo
echo
echo CScorza "Indagini Telematiche"
echo Sito Web https://cscorza.github.io/CScorza/
echo Canale Telegram https://t.me/+kP_uYlc6-345Njc8
echo GitHub https://github.com/CScorza
echo
echo
###################################################################################################################################
echo Tool installati per Argomenti - Social - Chat - Immagini - Email - 

#Crea cartelle 
cd ~/Scrivania/CScorza
mkdir Tools
cd ~/Scrivania/CScorzaTools
mkdir SOCIAL
mkdir CHAT
mkdir Immagini
mkdir Email-User
#mkdir Telefono
#mkdir Web-Tor
mkdir Network
mkdir Metadati
 
# Gestione Password
sudo snap install keepassxc		#gestore psw
sudo apt-get install geany		#editor di testo


sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get update --fix-missing
sudo apt-get --fix-broken install
sudo apt-get -f install

# Cambia indirizzo mac ogni riavvio della VM
sudo apt-get install macchanger				

##################### SOCIAL
cd ~/Scrivania/CScorzaTools/SOCIAL
### ALTRI Instagram Tool
sudo -H python3 -m pip install -U Instalooter 	#https://github.com/althonos/InstaLooter Usage https://instalooter.readthedocs.io/en/latest/usage.html
sudo -H python3 -m pip install -U Instaloader		#https://github.com/instaloader/instaloader
sudo -H python3 -m pip install toutatis
cd ~/Scrivania/CScorzaTools/SOCIAL
#Telegram
sudo apt install telegram-desktop

echo
echo
echo -e $YELLOW '- - -INSTALLATO SOCIAL '
echo
echo
echo 

###############  Immagini

cd ~/Scrivania/CScorzaTools/Immagini
#Eagleye
git clone https://github.com/ThoughtfulDev/EagleEye.git								#https://github.com/ThoughtfulDev/EagleEye#getting_started
sudo apt install libgtk-3-dev libboost-all-dev build-essential cmake libffi-dev
cd EagleEye
sudo pip3 install -r requirements.txt
sudo pip3 install --upgrade beautifulsoup4 html5lib spry

#Isearch-osint
cd ~/Scrivania/CScorzaTools/Immagini
git clone https://github.com/maleksal/isearch-osint.git
cd isearch-osint/
sudo apt-get install build-essential cmake
sudo apt-get install libgtk-3-dev
sudo apt-get install libboost-all-dev
sudo python3 -m pip install dlib
sudo python3 -m pip install -r requirements.txt


cd ~/Scrivania/CScorza
sudo apt-get install flameshot		#strumento di cattura-screenshot

echo
echo
echo -e $BLU '- - -INSTALLATO Immagini '
echo
echo
echo 

#################### installa chromedriver e selenium
cd ~/Scaricati
sudo apt-get update
sudo apt-get upgrade

####ChromeDriver
##ATTENZIONE VERIFICARE LA VERSIONE DI CHROME INSTALLATA E SCARICARE LA VERSIONE DI CHROMEDRIVER CORRETTA https://sites.google.com/a/chromium.org/chromedriver/downloads
##inserire lo ZIP nella cartella Scaricati 
sudo apt-get update
sudo pip3 install -U  selenium		#installa selenium
sudo apt-get install -y cl-base64
sudo apt-get install libb64-0d
sudo apt-get install -y unzip xvfb libxi6 libgconf-2-4

unzip chromedriver_linux64.zip
#
sudo mv chromedriver /usr/bin/chromedriver
sudo chown root:root /usr/bin/chromedriver
sudo chmod +x /usr/bin/chromedriver
sudo rm chromedriver_linux64.zip

echo
echo
echo -e $BLU '- - -INSTALLATO SELENIUM CHROMEDRIVER '
echo
echo
echo 


cd ~/Scrivania/CScorzaTools/Email-User
#Ghunt
git clone https://github.com/mxrch/GHunt.git			
#da inserire Chromedriver & Google Chrome- This project uses Selenium and automatically downloads 
#the correct driver for your Chrome version. ⚠️ So just make sure to have Google Chrome installed.
cd ghunt
python3 -m pip install -r requirements.txt
python3 -m pip install --upgrade -r requirements.txt

cd ~/Scrivania/CScorzaTools/Email-User
#Mailfoguess
git clone https://github.com/WildSiphon/Mailfoguess
cd Mailfoguess
pip3 install -r requirements.txt

sudo -H python3 -m pip install holehe				#https://github.com/megadose/holehe

sudo -H python3 -m pip install maigret				#https://github.com/soxoj/maigret


echo
echo
echo -e $BLU 'INSTALLATO  Email-User'
echo
echo
echo 

#######  Network
cd ~/Scrivania/CScorzaTools/Network
#Recon-ng
git clone https://github.com/lanmaster53/recon-ng.git
cd recon-ng
sudo -H python3 -m pip install -r REQUIREMENTS
sudo -H python3 -m pip install lxml

git clone https://github.com/s0md3v/Photon.git
cd Photon && sudo -H python3 -m pip install -r requirements.txt

cd ~/Scrivania/CScorzaTools/Network
#Maltego
sudo apt-get update
sudo apt install openjdk-11-jdk
sudo apt-get -f install
wget https://maltego-downloads.s3.us-east-2.amazonaws.com/linux/Maltego.v4.2.19.13940.deb
sudo dpkg -i Maltego.v4.2.19.13940.deb 
sudo rm Maltego.v4.2.19.13940.deb

cd ~/Scrivania/CScorzaTools/Network
git clone https://github.com/laramies/theHarvester.git		#The tool gathers emails, names, subdomains, IPs and URLs 
cd theHarvester
sudo python3 -m pip install -r requirements/base.txt


echo
echo
echo -e $BLU 'INSTALLATO Network'
echo
echo
echo 



###################### Metadati
cd ~/Scrivania/CScorzaTools/Metadati
#metagoofil
git clone https://github.com/opsdisk/metagoofil
cd metagoofil
python3 -m venv meta_venv
source meta_venv/bin/activate
pip install -r requirements.txt
deactivate

###Media Tools


echo
echo
echo -e $YELLOW '- - -INSTALLATO  Metadati '
echo
echo
echo 
############################à
sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get update --fix-missing
sudo apt-get -y upgrade
sudo apt-get --fix-broken install
sudo apt-get -f install
############################################

# Installazione TorBrowser

### TOR+Browser
cd ~/Scrivania
add-apt-repository -y ppa:micahflee/ppa
sudo apt-get -y update
sudo apt-get install -y torbrowser-launcher


### Google Earth
cd ~/Scrivania
wget http://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb
sudo apt install -y ./google-earth-stable_current_amd64.deb
sudo rm google-earth-stable_current_amd64.deb

echo
echo
echo -e $BLU '- - -INSTALLATO  TOR e GoogleEarth '
echo
echo
echo 
#####################
sudo apt-get update
sudo apt-get upgrade
sudo apt update --fix-missing
sudo apt --fix-broken install
sudo apt-get -f install
sudo apt-get autoclean
sudo apt-get autoremove
###############################################à
echo
echo
echo CScorza "Indagini Telematiche"
echo Sito Web https://cscorza.github.io/CScorza/
echo Canale Telegram https://t.me/+kP_uYlc6-345Njc8
echo GitHub https://github.com/CScorza
echo
echo Fine Installazione Workstation V 1.0

