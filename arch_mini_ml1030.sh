#!/bin/bash
#Este guión llamará a los demás guiones para instalar el sistema Arch completo en la Mini (notebook) Síragon ML-1030, de forma que sea modularmente usable en cualquier máquina al que se le quiera poner el mismo sistema.
#Los originales se ubicarán en http://sites.google.com/site/delldor/arch y subcarpetas, de forma que se puedan descargar en cualquier computadora. Este guión descargará del sitio correspondiente.

#TODO: Subir a github estos guiones y definir un documento con dirección acortada para las instrucciones de descarga. 

#Se parte de una instalación fresca, dónde sólo se puso el lenguaje en español en el teclado y no se cambió ninguna configuración.

#El guión deberá ejecutarse con sudo, pues se omite en todo el proceso

#Dirección base desde dónde descargar y ejecutar los guiones. Si es desde dentro del Arch, dejar en blanco del lado derecho de la igualdad
export base=/media/Raiz
#export base=/tmp

. ./guiones/configurareciensinstalado.sh
. ./guiones/ilovecandy.sh
#. ./guiones/activaalgunosespejos.sh

##Se actualizan las listas y pacman
#pacman -Sy
#pacman -S pacman pacman-mirrorlist

. ./guiones/addrepos.sh
#. ./guiones/ordenaespejos.sh

#pacman-optimize

##Actualiza el sistema completo
#pacman -Syuw
#pacman -Su

#. ./guiones/buscanews.sh
#. ./guiones/addusuario.sh


##Pregunta por la ejecución de los guiones de instalación, que comienzan con la palabra instala. Los importantes vienen inmediatamente seguidos por un número para que al ordenar, se pidan su ejecución primero.
#for i in $(find ./ -iname "insta*"|sort); do
##clear
#echo "¿Desea ejecutar las siguientes líneas? (s para Si)"
#cat "$i"
#read A
#if [ "$A" = "s" ]; then 
# cat "$i"
# #. $i #FIXME
# fi
#done


##TODO: DEFINIR ALIAS
##TODO:CONFIGURACIÓN DE VIDEO INTEL.
##TODO: INSTALAR KUPFER
##TODO: EVITAR PROBLEMA DE APARCAMIENTO

##TODO:
#echo "Para que arranque LXDE, se puede emplear:
#sed -i 's/x:5:respawn/#x:5:respawn/g' /etc/inittab"
##echo "x:5:respawn:/usr/sbin/lxdm >& /dev/null"|sudo tee -a /etc/inittab
#echo "
#nano ~/.xinitrc
#...
## exec xterm
#exec ck-launch-session startlxde
#Iniciar el servidor de ventanas.
## startx

#Otra opción es añadir lxde como servicio en DAEMONS en /etc/rc.conf:
#lxdm o @lxdm

#Gestor base de ventanas:
#pacman -S xorg xorg-xinit


#Seleccionar un Fondo de pantalla en:
#/usr/share/lxde/wallpapers"
