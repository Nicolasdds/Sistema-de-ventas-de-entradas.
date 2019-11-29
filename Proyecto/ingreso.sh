#!/bin/bash
echo "Usuario Misterioso" > usuario_actual.txt

while true
do
clear
echo "......................................"
echo ". Sistema de Facturacion de Entradas ."
echo "......................................"
echo ""
echo "Ingrese su alias: "
read nom_alias

grep -wq "$nom_alias" usuarios.txt

if [ $? -eq 0 ]
  then
     break
 else
      echo ""
      echo "Revise su alias!"
      sleep 2;
fi
done
  
while true
do
clear
echo "......................................"
echo ". Sistema de Facturacion de Entradas ."
echo "......................................"
echo ""
echo "Ingrese su contraseña: "
read -s pass

grep -wq "$pass" usuarios.txt

if [ $? -eq 0 ]
  then
     break
 else
      echo ""
      echo "Revise su contraseña!"
      sleep 2;
fi
done
echo $nom_alias > usuario_actual.txt
bash menu.sh
exit


