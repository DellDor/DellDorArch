#!/bin/bash
#Ordenar espejos por orden decreciente en función de velocidad de descarga. Se debería ejecutar luego de actualizar la lista de espejos
sed -i 's/#Server/Server/g' /etc/pacman.d/mirrorlist
cp -v /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist_original
rankmirrors -v /etc/pacman.d/mirrorlist|tee /etc/pacman.d/mirrorlist

