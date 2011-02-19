#!/bin/bash
###########  INSTALA LIBREOFFICE ###########
paquetes="libreoffice libreoffice-es jre xpdf {hunspell,mythes,hyphen}-es"
sudo pacman -Sw $paquetes
sudo pacman -Sv --needed $paquetes
