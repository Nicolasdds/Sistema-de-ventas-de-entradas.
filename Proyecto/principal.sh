#!/bin/bash
echo "Usuario Misterioso" > usuario_actual.txt

while [ $opcion!=Q -a $opcion!=q ]
do
clear

echo "......................................"
echo ". Sistema de Facturacion de Entradas ."
echo "......................................"
echo ""
echo "¿Ya tiene una cuenta de usuario?"
echo ""
echo "1- Si."
echo "2- No, crearme una cuenta."
echo "3- Ayuda."
echo "Q- Salir"
echo ""
read opcion

case $opcion in
1) bash ingreso.sh;;
2) bash nueva_cuenta.sh;;
3) bash help.sh;;
Q|q) exit;;
*) echo "Hubo un error." 
sleep 2;;
esac
done
