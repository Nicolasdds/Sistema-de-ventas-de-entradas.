#!/bin/bash
clear
echo "
....................................
. Bienvenido a la sección de ayuda .
....................................

* Breve descripción del programa:

   - El sistema de facturacion & ventas se trata básicamente de una herramienta administrativa
     que tiene como propósito facilitar la gestion de las ventas y el stock de entradas
     de diversos eventos que se darán durante el año.
     El programa se diseñó para uso exclusivo de personal de ventas.  

* Inicialización:

   - El programa se activa abriendo la consola bash de linux, escribiendo el siguiente codigo:
     "bash principal.sh".

* Ventana principal: 
  
   - Cuando el programa se inicia, lo primero que nos pregunta es que si tenemos una cuenta de usuario.
     En caso de que no tengamos una, debemos crearnos la cuenta con el fin de que la facturación 
     de una determinada venta sea archivada con el respectivo vendedor.

* Menu de navegación:

   - En la ventana de bienvenida, tenemos 5 opciones principales;
     1) Ventas:
               Se podrá registrar una venta.
     2) Alta de clientes:
               Se podrá registrar un nuevo cliente a la base de datos.
     3) Baja de Entradas: 
               Se podrá eliminar una venta.
     4) Modificaciones:
               Se podrá editar una venta. (Solamente el evento, el cliente y la cantidad de entradas).
               No se permite editar el codigo de la venta, la fecha o el costo final de la misma (El programa
               lo hará automaticamente).
     5) Consultas:
               Se podrá realizar determiandas consultas pre-establecidas;
                  1) Ventas totales por mes:
                                Muestra la cantidad de ventas realizadas en un determiando mes.
                  2) Listado de clientes:
                                Muestra todos los clientes de la base de datos.
                  3) Listado de compras de un determiando cliente: 
                                Muestra todas las compras de un cliente.
                  4) Importe total de un determiando cliente:
                                Muestra el gasto total de un cliente. 
                  5) Listado de usuarios:
                                Muestra todos lso usuarios de la base de datos.
                  6) Listado de ventas de un determiando usuario:
                                Muestra las ventas totales del usuario.
                  7) La cantidad de ventas de un determinado usuario:
                                Muestra el total de ventas de un usuario.
                  8) Facturas:
                                Muestra el detalle compĺeto de una venta.
                  9) Ayuda:
                                Desplega éste mismo archivo en caso de dudas, tambien dispodrá
                                de uno en cada menu de navegación.
* Observación Final:
   
  -En caso de que quiera finalizar el programa, podrá hacerlo presionando la combinación de "Ctrl + C"
   en cualquier momento, y el programa se interrumpirá automáticamente.

Gracias por elegirnos!
Powered by: Gastón Machado & Nicolás Díaz"

echo ""
echo "---- Presione una tecla para continuar. ----"
echo ""
read pp
exit

