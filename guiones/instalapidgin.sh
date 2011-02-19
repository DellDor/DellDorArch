#!/bin/bash
###########  INSTALA PIDGIN ###########
paquetes="$paquetes pidgin ufw"
sudo pacman -Sw $paquetes
sudo pacman -Sv --needed $paquetes
