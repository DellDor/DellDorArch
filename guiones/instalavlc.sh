#!/bin/bash
###########  INSTALA VLC Y PLUGINS ###########
paquetes="vlc gstreamer0.10-good-plugins gstreamer0.10-bad-plugins gstreamer0.10-base"
sudo pacman -Sw $paquetes
sudo pacman -Sv --needed $paquetes
