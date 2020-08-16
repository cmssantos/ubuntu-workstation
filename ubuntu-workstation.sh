#!/bin/bash

## Removendo travas eventuais do apt ##

echo "Removendo travas eventuais do apt"

sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock;


## Adicionar PPA's ##

echo "Adicionando PPA's"

sudo apt-add-repository ppa:graphics-drivers/ppa -y && 


## Atualizando o repositório ##

echo "Atualizando o repositório"

sudo apt update &&


## Download de programas externos ##

https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb


## Programas do repositório ##

echo "Instalando os programas do repositório"

sudo apt install dconf-editor && 
sudo apt install fonts-firacode && 
sudo apt install ubuntu-restricted-extras -y && 
sudo apt install curl -y &&
sudo apt install vlc -y &&
sudo apt install freetux &&
sudo apt install pavucontrol &&

sudo snap install spotify && 
sudo snap install code --classic && 
sudo snap install simplenote && 
sudo snap install discord && 
sudo snap install insomnia && 
sudo snap install mailspring && 

## NVM ##

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash


## UFW

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

gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false

gsettings set org.gnome.shell.extensions.dash-to-dock autohide-in-fullscreen true

gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false

gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 38

gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'DYNAMIC'

gsettings set org.gnome.shell.extensions.desktop-icons show-home false

gsettings set org.gnome.shell.extensions.desktop-icons show-trash false

## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&


#Fim do Script ##

echo "Finalizado"
