#!/bin/bash
while [ $opcion!=Q -a $opcion!=q ]
do
clear
echo "........................................"
echo ". Actualizacion del Registro de Ventas ."
echo "........................................"
echo ""
read -p "Codigo de Compra: " codigo
compra_detalle=$(egrep -w "^$codigo" Entradas.txt)
echo $compra_detalle > Detalle.txt
lineas=$(grep -c "^[0-9]" Entradas.txt)
tail_var=$[ $lineas - $codigo ]
head_var=$[ $codigo + 1 ]
codigo_evento=$(grep -w "^$codigo" Entradas.txt|cut -f2 -d":")
fecha=$(grep -w "^$codigo" Entradas.txt|cut -f6 -d":")
vendedor=$(grep -w "^$codigo" Entradas.txt|cut -f7 -d":")



echo ""
echo "Detalles de Compra: "
echo "-------------------------------------------------------"
(echo Evento"(codigo)":Cliente:Entradas:Monto"($)":Vendedor ; tail Detalle.txt|cut -f2,3,4,5,7 -d":")|column -tx -s: 
echo "-------------------------------------------------------"
echo ""
echo "A continuacion, ingrese el nuevo detalle de la compra: "
echo ""
read -p "Codigo del Evento: " newcode 
read -p "Cedula Cliente: " newci 
read -p "Cantidad de entradas: " newcant

precio=$(grep -w "^$newcode" Eventos.txt|cut -d";" -f3)
precio_total=$[$precio * $newcant]

cat Entradas.txt | head -"$head_var" > temp3.txt
echo $codigo:$newcode:$newci:$newcant:$precio_total:$fecha:$vendedor >> temp3.txt
egrep "^[0-9]" Entradas.txt | tail -"$tail_var" >> temp3.txt
cat temp3.txt > Entradas.txt

echo "-------------------------------"
clear
echo "Actualizacion realizada con exito!"
echo ""
echo "Nuevo detalle de la Compra N°"$codigo":"
compra_detalle=$(grep -w "^$codigo" Entradas.txt)
echo $compra_detalle > Detalle.txt
echo "--------------------------------------------------"
(echo Evento"(codigo)":Cedula:Entradas:Monto"($)":Vendedor ; tail Detalle.txt|cut -f2,3,4,5,7 -d":")|column -tx -s: 
echo "--------------------------------------------------"
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


sleep 3;
