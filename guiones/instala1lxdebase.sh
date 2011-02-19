#!/bin/bash
###########  INSTALA PAQUETES BÁSICOS DE LXDE ###########
#TODO: Añadir aquí configuraciones para que los elementos del escritorio funcione.
#TODO: CONFIGURACIÓN DE SLIM: http://archxz.wordpress.com/2009/08/09/instalacion-de-escritorios/
paquetes="lxde lxdm lxsesion-lite xorg xorg-xinit xorg-server dbus gamin slim archlinux-themes-slim xf86-video-intel alsa-utils hal gpicview lxterminal xorg-utils obconf xscreensaver"
paquetes="$paquetes ttf-liberation ttf-dejavu ttf-bitstream-vera"
paquetes="$paquetes gvfs gvfs-gphoto2 gvfs-obexftp"
paquetes="$paquetes ufw"
sudo pacman -Sw $paquetes #Primeramente sólo descarga, para evitar problemas con red
sudo pacman -Sv --needed $paquetes #Instala solo los que no estén instalados ya

#Automatiza teclado y lenguaje en español:
echo "@setxkbmap -layout es"|tee -a /etc/xdg/lxsession/LXDE/autostart
locale-gen
