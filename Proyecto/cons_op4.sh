#!/bin/bash
while [ $opcion!=Q -a $opcion!=q ]
do
clear
echo "..................................."
echo ". Listado de ventas de un usuario ."
echo "..................................."
echo ""
echo "Alias usuario: "
read al_nom
echo ""

clear
echo "..................................."
echo ". Listado de ventas de un usuario ."
echo "..................................."
echo ""
echo "Titular Alias: " $al_nom
echo ""
echo "--------------------------------------------------------------------------------------------"
compras=$(grep -c "$al_nom" Entradas.txt)
grep -w "$al_nom" Entradas.txt > temp7.txt

echo "N° de ventas: " $compras
echo "--------------------------------------------------------------------------------------------"
(echo Factura:N° Evento:Cliente:Entradas:Monto"($)":Fecha ; tail temp7.txt|cut -f1,2,3,4,5,8 -d":")|column -tx -s: 
echo "--------------------------------------------------------------------------------------------"
sleep 1;

echo ""
echo "Desea realizar otra consulta similar?."
echo ""
echo "1- Si."
echo "Q- No."
read opcion

case $opcion in
1) echo "";;
Q|q) break;;
*) echo "Hubo un error." 
sleep 2;;
esac
done
