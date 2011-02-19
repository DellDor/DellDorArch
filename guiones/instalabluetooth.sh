#!/bin/bash
###########  INSTALA ELEMENTOS NECESARIOS PARA BLUETOOTH ###########
paquetes="bluez gnome-bluetooth gnome-user-share"
sudo pacman -Sw $paquetes
sudo pacman -Sv --needed $paquetes
