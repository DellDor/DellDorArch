#!/bin/bash
###########  INSTALA NETWORKMANAGER ###########
paquetes="hicolor-icon-theme gnome-icon-theme networkmanager network-manager-applet gnome-keyring" #Para Networkmanager
sudo pacman -Sw $paquetes
sudo pacman -Sv --needed $paquetes
#TODO: Colocar aquí configuraciones necesarias para que funcione: Instalación Network Manager en LXDE (OpenBox)
