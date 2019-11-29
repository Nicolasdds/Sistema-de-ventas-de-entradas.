#!/bin/bash
while [ $opcion!=Q -a $opcion!=q ]
do

while true
do
clear
echo "............................."
echo ". Registro de Nuevo Cliente ."
echo "............................."
echo ""
read -p "Nombre: " nom
if  echo $nom | egrep -xq "^[A-Z][a-z]*"
then
break
else 
echo ""
echo "Su nombre debe comenzar con una mayuscula!"
sleep 2;
fi
done


while true
do
clear
echo "............................."
echo ". Registro de Nuevo Cliente ."
echo "............................."
echo ""
echo "Nombre: " $nom
read -p "Apellido: " ape
if  echo $ape | egrep -xq "^[A-Z][a-z]*"
then
break
else 
echo ""
echo "Su apellido debe comenzar con una mayuscula!"
sleep 2;
fi
done

while true
do
clear
echo "............................."
echo ". Registro de Nuevo Cliente ."
echo "............................."
echo ""
echo "Nombre: " $nom
echo "Apellido: " $ape
read -p "Cedula: " ced
if echo  $ced|egrep -xq "[0-9]{8}"
then
   if grep -qw $ced clientes.txt 
   
   then
   echo ""
   nombre=$(grep -w $ced clientes.txt|cut -d":" -f2)
   apellido=$(grep -w $ced clientes.txt|cut -d":" -f3)
   echo "La cedula ya está registrada con el nombre: " $nombre $apellido
   sleep 2;
   else
   break
   fi
else
echo ""
echo "Revise la cedula!"
sleep 2;
fi
done 

echo ""
echo "1- Confirmar." 
echo "2- Anular."
echo "Q- Salir."
read opcion

case $opcion in
1)clear
num_id=$(cat id_clientes.txt)
echo $ced:$nom:$ape:$num_id >> clientes.txt
num_id=$[$num_id + 1]
echo $num_id > id_clientes.txt
echo "............................."
echo ". Registro de Nuevo Cliente ."
echo "............................."
echo ""
echo "Cliente ingresado con éxito!"
echo ""
echo "Presione una tecla para continuar..."
read n
break;;
2)echo "";;
Q|q)exit;;
*)echo "Hubo un error."; sleep 2;;
esac
done


while [ $opcion!=Q -a $opcion!=q ]
do
clear
echo "............................."
echo ". Registro de Nuevo Cliente ."
echo "............................."
echo ""
echo "¿Desea realizar otro registro?"
echo ""
echo "1- Si."
echo "Q- Salir."
read op
case $op in
1)bash new_client.sh;;
Q|q) exit;;
*) echo "Hubo un error."; sleep 2;;
esac
done
