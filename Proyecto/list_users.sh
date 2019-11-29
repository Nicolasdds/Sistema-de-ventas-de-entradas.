#!/bin/bash
clear
echo "......................."
echo ". Listado de Clientes ."
echo "......................."
echo ""
echo "................................" 
(echo ID:ALIAS:NOMBRE:APELLIDO ; tail usuarios.txt|cut -f1,2,4,5 -d":")|column -tx -s: 
echo "..............................."
echo ""
echo "- Presione una tecla para continuar -"
read n
exit
