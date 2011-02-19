#!/bin/bash
###########  INSTALA DESCOMPRESORES DE ARCHIVOS ###########
paquetes="file-roller gzip unrar zip unzip p7zip xz arj unace unshield tar"
sudo pacman -Sw $paquetes
sudo pacman -Sv --needed $paquetes
