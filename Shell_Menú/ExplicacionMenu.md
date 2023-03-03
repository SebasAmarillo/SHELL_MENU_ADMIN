Angel Sebastian Amarillo Delgado

# <p align="center"> **MENU DE ADMINISTRACIÓN EN SHELL** </p>
___

<p style="text-align: justify;">Inicialmente se muestra en pantalla el menú y todas sus opciones que puede realizar el usuario al ingresar, de igual forma se le solicitará al usuario que ingrese el número de la opción que desea realizar una vez ingrese el número se desplegará la configuración de cada número, la siguiente imagen muestra cómo se verá el menú</p>
<p style="text-align: justify;">Este menú cuenta con 8 opciones, además al final se le solicitara al usuario que ingrese el número de la opción que desea realizar, esta parte se realizó un while y dentro del while un case el cual dependiendo el número que ingrese realizara la respectiva configuración </p>

<p align="center">
  <img src="/Shell_Menú/ImageMenu/Menu.PNG">
</p>

<p style="text-align: justify;">Ahora se explicara cada unas de las opciones y su funcion realizada</p>

## <p align="center"> **OPCIONES DE MENU Y SU FUNCIÓN** </p>

### <p align="justify"> **Opción 1)** </p>

<p style="text-align: justify;">En esta opción primero se le indicara al usuario el nombre actual del servidor, luego se le desplegara una serie de opciones que puede realizar esto se hizo por medio de un case, las opciones son:</p>

1. Cambiar nombre del servidor: Al seleccionar esta opción se le solicitara el nuevo nombre del servidor y luego se le indicara que el cambio del nombre fue exitoso y se evidenciara el nuevo nombre en el servidor.
2. Volver al menú principal: Si es seleccionada entonces limpiara la pantalla y mostrara nuevamente el menú principal.

<p style="text-align: justify;">Además de esto dentro del case se pone un *) para que cuando la persona ingrese otro número diferente a los que ya se mostraron previamente, se le indicara en pantalla que la opción ingresada es invalida.</p>

<p align="center">
  <img src="/Shell_Menú/ImageMenu/Opt1.PNG">
</p>

<p align="center">
  <img src="/Shell_Menú/ImageMenu/Opt1-1.PNG">
</p>

### <p align="justify"> **Opción 2)** </p>

<p style="text-align: justify;">En esta opción inicialmente se le mostrara en pantalla al usuario los discos actuales de su máquina, luego se le solicitara que ingre el nombre del disco que desea partir o configurar, una vez ingresado el disco la terminal le mostrara las opciones que puede realizar y ya el usuario se encargara de ingresar la letra o comando del proceso que desea realizar.</p>

#### <p style="text-align: justify;"> **Advertencia se debe tener cuidado con las configuraciones que se van a realizar, ya que podría ocasionarse un daño en la máquina.** </p>

<p align="center">
  <img src="/Shell_Menú/ImageMenu/Opt2.PNG">
</p>

### <p align="justify"> **Opción 3)** </p>

<p style="text-align: justify;">En esta opción se le indicara al usuario que podrá modificar la IP del servidor, por lo tanto, primero se mostrara la IP actual del servidor, luego se mostraran las siguientes opciones de las cuales puede seleccionar la que desea realizar:</p>

1. Instalar net-tolos para poder realizar las configuraciones: Se recomienda que el usuario verifique si tiene net-tolos instalado, ya que sin ello no le permitirá realizar ninguna configuración, por lo tanto, se brinda la opción de que lo pueda instalar. 
2. Modificar IP de una interfaz de red: Si es seleccionada primero se le indicara al usuario que ingrese el nombre de la interfaz de red que desea modificar, luego que ingrese el nuevo número de IP, luego la máscara de la IP, finalmente se le indicara que se realizó el cambio de la IP y se le mostrara la configuración realizada esa interfaz de red. 
3. Configurar interfaz de Red dinámica: Si es seleccionada esta configuración hará que la IP del servidor sea dinámica dependiendo de la red.
4. Volver al menú principal: Si es seleccionada entonces limpiara la pantalla y mostrara nuevamente el menú principal.

<p style="text-align: justify;">Además de esto dentro del case se pone un *) para que cuando la persona ingrese otro número diferente a los que ya se mostraron previamente, se le indicara en pantalla que la opción ingresada es invalida.</p>

<p align="center">
  <img src="/Shell_Menú/ImageMenu/Opt3.PNG">
</p>

<p align="center">
  <img src="/Shell_Menú/ImageMenu/Opt3-1.PNG">
</p>

### <p align="justify"> **Opción 4)** </p>

<p style="text-align: justify;">En esta opción se le mostrara las siguientes opciones al usuario para que pueda ingresar y realizar la respectiva configuración, las opciones son:</p>

1. Configurar tabla Host: Si es seleccionada el usuario ingresara al archivo host, donde podrá realizar la configuración que desea, asi como eliminar, editar o agregar los hosts que desee, luego de realizar la configuración y salir del archivo se le mostrara al usuario lo que acaba de editar. 
2. Volver al menú principal: Si es seleccionada entonces limpiara la pantalla y mostrara nuevamente el menú principal.

<p style="text-align: justify;">Además de esto dentro del case se pone un *) para que cuando la persona ingrese otro número diferente a los que ya se mostraron previamente, se le indicara en pantalla que la opción ingresada es invalida.</p>

<p align="center">
  <img src="/Shell_Menú/ImageMenu/Opt4.PNG">
</p>
