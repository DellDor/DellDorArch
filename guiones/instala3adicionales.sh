#!/bin/bash
###########  INSTALA ADICIONALES NO PRIORITARIOS ###########
paquetes="hwdetect meld lshw"
paquetes="$paquetes catfish"
sudo pacman -Sw $paquetes
sudo pacman -Sv --needed $paquetes

