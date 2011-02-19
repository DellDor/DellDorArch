#!/bin/bash
###########  INSTALA FIREFOX ###########

paquetes="firefox arch-firefox-search firefox-i18n flashplugin filezilla ufw"
sudo pacman -Sw $paquetes
sudo pacman -Sv --needed $paquetes

#TODO: configuraciones básicas de FF y optar por complementos
