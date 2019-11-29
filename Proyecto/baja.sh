#!/bin/bash
while [ $opcion!=Q -a $opcion!=q ]
do
clear

echo "....................................."
echo ". Eliminación de Registro de Ventas ."
echo "....................................."
echo ""
echo "Codigo de Compra:"
read codigo
codevento=$(grep -w "^$codigo" Entradas.txt|cut -d":" -f2)
cliente=$(grep -w "^$codigo" Entradas.txt|cut -d":" -f3)
nombre_evento=$(grep -w "^$codevento" Eventos.txt|cut -d";" -f2)

echo ""
echo "¿Está seguro que desea eliminar la venta de "$nombre_evento", del cliente "$cliente "?"

echo ""
echo "1- Si."
echo "2- No."
echo "Q- Salir."
read opcion
case $opcion in
1) grep -v "^$codigo" Entradas.txt > temp.txt
mv temp.txt Entradas.txt
clear
echo "Registro Eliminado Exitosamente!."
echo ""
echo "Presione una tecla para continuar..."
read n
break;;
2) echo "";;
Q|q) exit;;
*) echo "Hubo un error."; sleep 2;;

esac
done

   while [ $opcion!=Q -a $opcion!=q ]
   do
   echo "--------------------------------------"
   echo "¿Desea eliminar otro ingreso?"
   echo ""
   echo "1- Si."
   echo "Q- Salir."
   read op
   case $op in
   1)bash baja.sh;;
   Q|q) exit;;
   *) echo "Hubo un error."; sleep 2;;
   esac
   done


