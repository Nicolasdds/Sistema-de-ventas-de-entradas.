#!/bin/bash
while [ $opcion!=Q -a $opcion!=q ]
do
clear
echo "................................."
echo ". Listado de Compras de Cliente ."
echo "................................."
echo ""
while true
do
echo "Las consultas se realizan con la Cedula del Cliente."
echo "Desea ver el listado de Clientes? "
echo ""
echo "1- Si."
echo "2- No."
read pp
case $pp in
1) bash list_client.sh
   break;;
2) break;
esac
done

while true
do
clear
echo "................................."
echo ". Listado de Compras de Cliente ."
echo "................................."
echo ""
read -p "Cedula: " ci
echo ""
  if
   echo  $ci|egrep -xq "[0-9]{8}"
  then
   break
  else
   echo ""
   echo "Revise la cedula!"
   sleep 2;
  fi
  done 

nombre=$(grep "$ci" clientes.txt|cut -d":" -f2)
apellido=$(grep "$ci" clientes.txt|cut -d":" -f3)

clear
echo "................................."
echo ". Listado de Compras de Cliente ."
echo "................................."
echo ""
echo "Titular: " $nombre $apellido
echo ""
echo "--------------------------------------------------------"
contador=1
compras=$(grep -c "$ci" Entradas.txt)
grep "$ci" Entradas.txt > temp10.txt

echo "N° de Compras: " $compras
echo "--------------------------------------------------------"
(echo Factura:N° Evento:Entradas:Monto"($)":Fecha ; tail temp10.txt|cut -f1,2,4,5,8 -d":")|column -tx -s: 
echo
echo "--------------------------------------------------------"
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
