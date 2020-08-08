#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update && 

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt install git gnome-tweaks unrar ubuntu-restricted-extras flatpak gnome-software-plugin-flatpak -y &&

## Instalando pacotes Snap ##

sudo snap install simplenote &&
sudo snap install insomnia &&  
sudo snap install spotify &&
sudo snap install code --classic &&  
sudo snap install remmina && 
sudo snap install wps-office-multilang && 

#forticlient#
#discord

## Ative a opção “minimizar ao clicar” ##

gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-overview'

## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"
