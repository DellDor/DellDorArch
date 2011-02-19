#!/bin/bash
#TODO: Revisa si está instalado meld, ejecuta la siguiente línea, sino simplemente muestra la ubicación de los nuevos archivos.
#FIXME: Existe otras denominaciones, además de pacnew para las sustituidas. Buscarlas y añadirlas aquí

#Para comparar archivos de configuración nuevos. Se requiere meld, por tanto un entorno gráfico:
#for i in $(find ./ -iname "*pacnew"|awk -F.pacnew '{ print $1 }'); do meld $i $i.pacnew; done


#Busca archivos de configuración cambiados
find ./ -iname "*pacnew"



#Luego de revisados, eliminar:
#find ./ -iname "*.pacnew" -exec rm {} \;
