#!/bin/bash
#Añade repositorios usados a pacman.conf. Debería ejecutarse luego de actualizar pacman

#Añadir repo de yaourt
if [ "x"`cat $base/etc/pacman.conf |grep archlinux.fr` = "x" ]; then 
echo "
[archlinuxfr]
#Repo de yaourt
Server = http://repo.archlinux.fr/i686
"|tee -a $base/etc/pacman.conf
fi


#Añadido repositorio en español
if [ "x"`cat $base/etc/pacman.conf |grep archlinux-es.org` = "x" ]; then 
echo "
[archlinux-es]
# Repositorio Hispano (Spanish/Hispanic Respository)
Server = http://repo.archlinux-es.org/i686
"|tee -a $base/etc/pacman.conf
fi

