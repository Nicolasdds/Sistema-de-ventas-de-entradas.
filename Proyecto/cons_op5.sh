#!/bin/bash
clear
echo "......................."
echo ". Consulta de Ventas: ."
echo "......................."
echo ""
echo "Ingrese el Alias: "
read usuario

while [ $opcion!=Q -a $opcion!=q ] 
do
clear
echo "......................."
echo ". Consulta de Ventas: ."
echo "......................."
echo ""
echo "Seleccione el periodo: "
echo ""
echo "1- Octubre."
echo "2- Noviembre."
echo "3- Diciembre."
echo "Q- Volver al menu principal."
read opcion
octubre=$(grep $usuario Entradas.txt | grep -c 201810)
noviembre=$(grep $usuario Entradas.txt | grep -c 201811)
diciembre=$(grep $usuario Entradas.txt | grep -c 201812)


ventas=$(grep -c $usuario Entradas.txt)

case "$opcion" in
1)
echo "----------------------------------------------------" 
echo "Las ventas de" $usuario "en octubre suman: " $octubre
echo "----------------------------------------------------"
sleep 5;;
2) 
echo "----------------------------------------------------" 
echo "Las ventas de" $usuario "en noviembre suman: " $noviembre
echo "----------------------------------------------------" 
sleep 5;;
3)
echo "----------------------------------------------------" 
echo "Las ventas de" $usuario "en octubre suman: " $diciembre
echo "----------------------------------------------------" 
sleep 5;;
Q|q) break;;
*) echo "Hubo un error." 
sleep 2;;
esac
done
