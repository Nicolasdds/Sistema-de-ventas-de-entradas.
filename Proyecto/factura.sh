#!/bin/bash
while [ $opcion!=Q -a $opcion!=q ]
do
clear
echo "................................"
echo ". -- Informe de Facturacion -- ."
echo "................................"
echo ""
echo "Ingrese el codigo de venta: "
read codigo

clear
echo ".................."
echo ". -- Facturas -- ."
echo ".................."
echo ""
echo "Detalle Factura N°"$codigo ":"
grep -w ^"$codigo" Entradas.txt > temp6.txt

echo "--------------------------------------------------------------------------------------------"
(echo Evento"(codigo)":Cliente:Entradas:Monto"($)":Vendedor:Fecha ; tail temp6.txt|cut -f2,3,4,5,7,8 -d":")|column -tx -s: 
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
