#!/bin/bash
###########  INSTALA PAQUETES NECESARIOS PARA COMPILAR CON YAOURT ###########
paquetes="gcc pkgconfig make patch autoconf automake"
pacman -Sw $paquetes #Primeramente sólo descarga, para evitar problemas con red
pacman -Sv --needed $paquetes #Instala solo los que no estén instalados ya

#TODO: PROBAR COWER

