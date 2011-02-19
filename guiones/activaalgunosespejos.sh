#!/bin/bash
#TODO: ARRGELAR. SE QUIERE QUE PRUEBE PRIMERO SI ES NECESARIO AL TENER ALGÚN ESPEJO ACTIVO
#Activa algunos espejos de repositorios iniciales, para poder hacer las actualizaciones básicas (incluyendo la lista de espejos)
#sed -i 's/#Server = http:\/\/archlinux.c3sl.ufpr.br/Server = http:\/\/archlinux.c3sl.ufpr.br/g' $base/etc/pacman.d/mirrorlist
#sed -i 's/#Server = http:\/\/pet.inf.ufsc.br/Server = http:\/\/pet.inf.ufsc.br/g' $base/etc/pacman.d/mirrorlist
#sed -i 's/#Server = ftp:\/\/mirror.archlinux.cl/Server = ftp:\/\/mirror.archlinux.cl/g' $base/etc/pacman.d/mirrorlist
prueba=`cat $base/etc/pacman.d/mirrorlist |grep ^Server`"x"
echo $prueba
read A
if [ "x$prueba" != "x" ]; then
echo "es falso"
read A
#if [ "x"`cat $base/etc/pacman.conf |grep ILoveCandy` = "x" ]; then 
variable=`awk '/# Brazil/,/# B[^ra]/' $base/etc/pacman.d/mirrorlist|tail -n1`
awk '/# Brazil/,/# B[^ra]/' $base/etc/pacman.d/mirrorlist|grep -ve "$variable" > /tmp/pararch.pcman.conf
variable=`awk '/# Chile/,/# China/' $base/etc/pacman.d/mirrorlist|tail -n1`
awk '/# Chile/,/# China/' $base/etc/pacman.d/mirrorlist|grep -ve "$variable" >> /tmp/pararch.pcman.conf
sed -i 's/#Server/Server/g' /tmp/pararch.pcman.conf
cp -v $base/etc/pacman.d/mirrorlist $base/etc/pacman.d/mirrorlist.pacnew
cp -v /tmp/pararch.pcman.conf $base/etc/pacman.d/mirrorlist
fi
