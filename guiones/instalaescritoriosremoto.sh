#!/bin/bash
###########  INSTALA ELEMENTOS PARA HACER ESCRITORIO REMOTO ###########
paquetes="openssh vinagre ufw"
#FIXME:paquetes="$paquetes skype"
#TODO: añadir aquí paquete rimmina o algo así
sudo pacman -Sw $paquetes
sudo pacman -Sv --needed $paquetes
