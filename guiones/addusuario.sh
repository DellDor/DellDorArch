#!/bin/bash
#Añade usuario
usuario=delldor
groupadd networkmanager #Si se va a usar el networkmanager.
useradd -m -G users,lp,audio,floppy,optical,storage,video,wheel,power,networkmanager -s /bin/bash $usuario
passwd $usuario #Crea una contraseña
echo "$usuario ALL=(ALL) ALL"|tee -a /etc/sudoers
echo "Listo"

