#!/bin/bash

while [ $opcion!=Q -a $opcion!=q ] 
do
clear
echo "...................................."
echo ". ¿Que consulta quisieras realizar? ."
echo "...................................."
echo ""
echo "1- Ventas totales por mes."
echo "2- Listado de clientes."
echo "3- Listado de compras de un determinado cliente."
echo "4- Importe total de un determinado cliente."
echo "5- Listado de Usuarios."
echo "6- Listado de ventas de un determinado usuario. "
echo "7- La cantidad de ventas de un determinado usuario."
echo "8- Facturas."
echo "9- Ayuda."
echo "Q- Volver al menu principal."
read opcion

case $opcion in
1) bash cons_op1.sh;;
2) bash list_client.sh;;
3) bash cons_op3.sh;;
4) bash cons_op2.sh;; 
5) bash list_users.sh;;
6) bash cons_op4.sh;;
7) bash cons_op5.sh;;
8) bash factura.sh;;
9) bash help.sh;;
Q|q) break;;
*) echo "Hubo un error." 
sleep 2;;
esac
done
