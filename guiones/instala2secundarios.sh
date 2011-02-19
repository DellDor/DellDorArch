#!/bin/bash
###########  INSTALA PAQUETES SECUNDARIOS IMPORTANTES Luego de instalar algún escritorio (Gnome o LXDE) ###########
paquetes="ncurses python ufw gufw most xorg-xkill"
paquetes="$paquetes e2fsprogs dosfstools ntfsprogs gparted gnome-disk-utility"
paquetes="$paquetes meld pygtksourceview2 pygtksourceview2 p7zip"
paquetes="$paquetes xpdf poppler gedit cups-pdf"
paquetes="$paquetes acpid cpufrequtils laptop-mode-tools"
sudo pacman -Sw $paquetes
sudo pacman -Sv --needed $paquetes
