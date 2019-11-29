#!/bin/bash
echo "Usuario Misterioso" > usuario_actual.txt

while true
do
clear
echo "......................................"
echo ". Sistema de Facturacion de Entradas ."
echo "......................................"
echo ""
echo "Ingrese su Nombre : "
read nombre
if  echo $nombre | egrep -xq "^[A-Z][a-z]*"
then
      break
else 
     echo ""
     echo "Su nombre debe comenzar con una mayuscula!"
sleep 2;
fi
done

clear
echo "......................................"
echo ". Sistema de Facturacion de Entradas ."
echo "......................................"
echo ""
echo "Nombre: " $nombre 
echo ""
echo "Ingrese su Apellido : "
read apellido

while true
do
clear
echo "......................................"
echo ". Sistema de Facturacion de Entradas ."
echo "......................................"
echo ""
echo "Nombre: " $nombre 
echo "Apellido: " $apellido
echo ""
echo "Ingrese su Alias : "
read nom_alias

echo $nom_alias | grep -q " "
if [ $? -ne 0 ]
 then
  break
 else 
  echo ""
  echo "Su Alias no debe contener espacios!"
sleep 2;
fi
done

clear
echo "......................................"
echo ". Sistema de Facturacion de Entradas ."
echo "......................................"
echo ""
echo "Nombre: " $nombre 
echo "Apellido: " $apellido
echo "Alias: " $nom_alias
echo ""
echo "Ingrese una contraseña : "
read password

codigo=$(cat codigo_usuarios.txt)

echo $codigo:$nom_alias:$password:$nombre:$apellido >> usuarios.txt
codigo=$[$codigo + 1]
echo $codigo > codigo_usuarios.txt
echo ""
echo "> El usuario ah sido creado exitosamente! <"

sleep 3;
bash principal.sh
exit
