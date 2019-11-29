#!/bin/bash
usuario=$(cat usuario_actual.txt)
while true
do
clear
echo "......................"
echo ". Registro de ventas ."
echo "......................"
echo ""
read -p "Codigo de Evento: " codigo
  if grep -q "^$codigo;" Eventos.txt
  then
   fecha=$(grep "^$codigo;" Eventos.txt | cut -f4 -d";")
   precio=$(grep "^$codigo;" Eventos.txt | cut -f3 -d";")
   hoy=$(date +%Y%m%d%H%M)
   hoy2=$(date +'%A %d de %B de %Y %H%m')
   if (("$fecha" > "$hoy"))
    then
    break 		                  
    else 
    echo ""
    echo "El evento expiró."
    sleep 2;
   fi
    else
    echo ""
    echo "El evento no existe."
    sleep 2;
  fi
done
evento=$(grep -w "^$codigo" Eventos.txt | cut -f2 -d";")

while true
do
clear
echo "......................"
echo ". Registro de ventas ."
echo "......................"
echo ""
echo "Codigo de Evento: " $codigo
echo "Nombre de Evento: " $evento
echo ""
read -p "Ingrese la cedula de Cliente: " Cedula
  if
   echo  $Cedula|egrep -xq "[0-9]{8}"
  then
   if grep -wq $Cedula clientes.txt
      then
      break
      else
      while true
      do
      echo ""
      echo "Cliente no registrado!"
      echo "Desea agregarlo a la base de datos?"
      echo ""
      echo "1- Si."
      echo "Q- No."
      read pp
      case $pp in
      1) bash new_client.sh
         break;;
      Q|q) break;;
      *) echo "Hubo un error."; sleep 2;;
      esac
      done      

      sleep 2;
      fi
  else
  echo ""
  echo "Revise la cedula!"
  sleep 2;
  fi
  done 

nombre=$(grep "^$Cedula" clientes.txt | cut -d":" -f2)
apellido=$(grep "^$Cedula" clientes.txt | cut -d":" -f3)
                               
while true
do
clear
echo "......................"
echo ". Registro de ventas ."
echo "......................"
echo ""
echo "Datos del Evento: "
echo "" 
echo "Codigo: " $codigo
echo "Nombre: " $evento
echo "---------------------------"
echo ""
echo "Datos del Cliente: "
echo ""
echo "Nombre: " $nombre
echo "Apellido: " $apellido
echo "Cedula: " $Cedula
echo ""
read -p "Cantidad de Entradas: " cant
  if
    echo  $cant|egrep -xq "[1-5]{1}"
  then
    break
  else
   echo ""
   echo "La cantidad debe ser entre 1 y 5."
   sleep 2;
 fi                                
done 
codigo_ventas=$(cat codigo_ventas.txt)
total=$[$cant * $precio]
echo $codigo_ventas:$codigo:$Cedula:$cant:$total:$hoy:$usuario:$hoy2 >> Entradas.txt
codigo_ventas=$[$codigo_ventas + 1]
echo $codigo_ventas > codigo_ventas.txt
clear
echo ".................................................................."
echo ". Venta Concluida, por mas detalles acceder al menu de consultas ."
echo ".................................................................."
echo ""
echo "Detalles de la venta: "
echo ""
echo "Codigo: " $codigo
echo "Fecha: " $hoy2
echo "Cliente: " $nombre $apellido
echo "Evento: " $evento

while [ $op!=Q -a $op!=q ] 
do
echo ""
echo "¿Que desea realizar?:"
echo ""
echo "1- Ingresar otra venta."
echo "Q- Volver al menu principal."
read op

case $op in
1) bash alta.sh;;
Q|q) break;;
*) echo "Hubo un error."; sleep 2;;
esac
done






       

