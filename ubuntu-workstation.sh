#!/bin/bash

echo "Removendo travas eventuais do apt"

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock;


## Adicionar PPA's ##

echo "Adicionando PPA's"

sudo apt-add-repository ppa:graphics-drivers/ppa -y && 

sudo add-apt-repository ppa:lutris-team/lutris -y && 


## Atualizando o repositório ##

echo "Atualizando o repositório"

sudo apt update &&


## Download de programas externos ##

echo "Fazendo o download dos programas externos em ~/Downloads/programas"

mkdir ~/Downloads/programas && 

cd ~/Downloads/programas && 

wget -c https://www.pokerstars.com/PokerStarsInstall.exe && 

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && 

wget -c https://filestore.fortinet.com/forticlient/downloads/FortiClientFullVPNInstaller_6.4.0.0851.deb && 

wget -c https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.16851_amd64.deb && 

sudo dpkg -i *.deb && 


## Programas do repositório ##

echo "Instalando os programas do repositório"

sudo apt install dconf-editor && 
sudo apt install fira-fonts && 
sudo apt install ubuntu-restricted-extras && 
sudo apt install virtualbox -y && 
sudo apt install steam-installer -y && 
sudo apt install steam-devices && 
sudo apt install steam:i386 && 

sudo snap install spotity && 
sudo snap install code --classic && 
sudo snap install simplenote && 
sudo snap install discord && 
sudo snap install insomnia && 
sudo snap install mailspring && 


## ufw
sudo apt install ufw && 

sudo ufw enable && 

sudo ufw default deny incoming &&

sudo ufw default allow outgoing &&


## Remmina ##

sudo snap install remmina && 

sudo snap connect remmina:avahi-observe :avahi-observe && 

sudo snap connect remmina:cups-control :cups-control && 

sudo snap connect remmina:mount-observe :mount-observe && 

sudo snap connect remmina:password-manager-service :password-manager-service && 


## Configurações do Gnome ##

gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-overview'


## Lutris e Wine ##


## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"
