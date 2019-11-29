#!/bin/bash
usuario=$(cat usuario_actual.txt)

while [ $opcion!=Q -a $opcion!=q ] 
do
clear
echo "..............................................."
echo ". Bienvenido "$usuario", ¿Que desea realizar? ."
echo "..............................................."
echo ""
echo "1- Ventas."
echo "2- Alta de clientes."
echo "3- Baja de Entradas."
echo "4- Modificaciones."
echo "5- Consultas."
echo "6- Ayuda."
echo "Q- Salir."
read opcion

case $opcion in
1) bash alta.sh;;
2) bash new_client.sh;;
3) bash baja.sh;;
4) bash update.sh;;
5) bash consulta.sh;;
6) bash help.sh;;
Q|q) echo "Usuario Misterioso" > usuario_actual.txt
break;;
*) echo "Hubo un error."; sleep 2;;
esac
done


