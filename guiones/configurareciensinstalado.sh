#!/bin/bash
#Configura lo necesario para arrancar un sistema recién instalado a partir del live de archlinux archlinux-2010.05-core-i686.iso

#######rc.conf
#Idioma para localegen
sed -i 's/en_US/es_VE/g' $base/etc/rc.conf #LOCALE="es_VE.UTF-8"

#Teclado en español
sed -i 's/KEYMAP="en"/KEYMAP="es.map.gz"/g' $base/etc/rc.conf
sed -i 's/KEYMAP="es"/KEYMAP="es.map.gz"/g' $base/etc/rc.conf

#Nombre de servidor
sed -i 's/HOSTNAME="myhost"/HOSTNAME="delldor"/g' $base/etc/rc.conf
sed -i 's/myhost/delldor/g' $base/etc/hosts

#Hora
sed -i 's/HARDWARECLOCK=""/HARDWARECLOCK="localtime"/g' $base/etc/rc.conf

#######locale.gen
#Idioma
sed -i 's/^/#/g' $base/etc/locale.gen
sed -i 's/##/#/g' $base/etc/locale.gen
sed -i 's/#es_VE/es_VE/g' $base/etc/locale.gen

