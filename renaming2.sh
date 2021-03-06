#!/bin/bash
FECHA=$(date +%F)
echo "ingresa una extensión de archivo: "
read EXTENSION
echo "ingresa el prefijo del archivo: (sólo teclea enter para que sea la fecha ${FECHA}"
read PREFIJO
if [ -z $PREFIJO ]
then
  for ARCHIVO in *.${EXTENSION}
  do 
    mv ${ARCHIVO} ${FECHA}-$ARCHIVO
  done
else 
  for ARCHIVO in *.${EXTENSION} 
  do 
   mv ${ARCHIVO} ${PREFIJO}-$ARCHIVO 
   echo "Renombrando ${ARCHIVO} a ${PREFIJO}-${ARCHIVO}"
 done
fi
