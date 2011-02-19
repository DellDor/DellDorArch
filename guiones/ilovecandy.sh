#!/bin/bash
#Activa la aparición de pacman visual al ejecutar dicho programa


if [ "x"`cat $base/etc/pacman.conf |grep ILoveCandy` = "x" ]; then 
#IloveCandy en Pacman
awk '/# \/etc\/pacman.conf/,/\[options\]/' $base/etc/pacman.conf> /tmp/pararch.pcman.conf
echo "ILoveCandy">>/tmp/pararch.pcman.conf
awk '/\[options\]/,EOF' $base/etc/pacman.conf|grep -ve '\[options\]'>>/tmp/pararch.pcman.conf
cp -v /tmp/pararch.pcman.conf $base/etc/pacman.conf
fi
