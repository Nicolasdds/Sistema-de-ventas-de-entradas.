#!/bin/bash
while [ $opcion!=Q -a $opcion!=q ] 
do
clear
echo "....................................."
echo ". Elija el mes que desea consultar: ."
echo "....................................."
echo ""
echo "1- Octubre."
echo "2- Noviembre."
echo "3- Diciembre."
echo "Q- Volver al menu principal."
read opcion
octubre=$(grep -c 201810 Entradas.txt)
noviembre=$(grep -c 201811 Entradas.txt)
diciembre=$(grep -c 201812 Entradas.txt)

case $opcion in
1)
clear
echo "----------------------------------------" 
echo "Las ventas en Octubre suman: " $octubre
echo "----------------------------------------"
echo ""
echo "Presione una tecla para continuar..."
read n;;
2)
clear 
echo "----------------------------------------" 
echo "Las ventas en Noviembre suman: " $noviembre
echo "----------------------------------------" 
echo ""
echo "Presione una tecla para continuar..."
read n;;
3)
clear
echo "-----------------------------------------" 
echo "Las ventas en Diciembre suman: " $diciembre
echo "-----------------------------------------" 
echo ""
echo "Presione una tecla para continuar..."
read n;;
Q|q) break;;
*) echo "Hubo un error." 
sleep 2;;
esac
done
