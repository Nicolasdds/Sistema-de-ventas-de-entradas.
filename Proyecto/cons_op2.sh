#!/bin/bash
while [ $opcion!=Q -a $opcion!=q ]
do
clear
echo "........................................"
echo ". Importe total de compras de clientes ."
echo "........................................"
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
echo ""
clear
echo "........................................"
echo ". Importe total de compras de clientes ."
echo "........................................"
echo ""
read -p "Cedula: " ced
echo ""
  if
   echo  $ced|egrep -xq "[0-9]{8}"
  then
   break
  else
   echo ""
   echo "Revise la cedula!"
   sleep 2;
  fi
  done 

nombre=$(grep "$ced" clientes.txt|cut -d":" -f2)
apellido=$(grep "$ced" clientes.txt|cut -d":" -f3)
total=$(grep -w "$ced" Entradas.txt|cut -d":" -f5|paste -sd+|bc)
echo "--------------------------------------------------------------------------"
echo "Importe total de compras de" $nombre $apellido "es de: $"$total".00 Pesos Uruguayos."
echo "--------------------------------------------------------------------------"
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





