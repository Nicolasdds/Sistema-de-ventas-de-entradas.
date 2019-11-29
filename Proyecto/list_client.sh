#!/bin/bash
clear
echo "......................."
echo ". Listado de Clientes ."
echo "......................."
echo ""
echo "................................" 
(echo CEDULA:NOMBRE:APELLIDO:ID ; cat clientes.txt|cut -f1,2,3,4 -d":")|column -tx -s: 
echo "..............................."
echo ""
echo "- Presione una tecla para continuar -"
read n
exit
