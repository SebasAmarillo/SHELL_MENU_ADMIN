Angel Sebastian Amarillo Delgado.

# <p align="center"> **TALLER 1 DOCKER** </p>
______
<p style="text-align: justify;">Inicialmenete se debe abrir una cuenta en Git hub ingresando al siguiente link, https://github.com/, luego se registra uno en la pagina con el correo de su preferencia y se siguen los pasos que se indican en la pantalla</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu1.png">
  <img src="/Taller1_Docker/ImageCuentas/Cu2.png">
</p>

<p style="text-align: justify;">Una vez creada la cuenta se procede a realizar la condiguracion de las llaves SSH, para ello primero se debe ejecutar el siguiente comando en la maquina con el fin de conocer la llave.</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu3.png">
</p>

<p style="text-align: justify;">Luego de conocer la llave la copiamos y nos dirigimos nuevamenete a la pagina de git y damos clic en settings, luego entramos al apartado que dice SSH and GPG keys.</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu4.png">
</p>

<p style="text-align: justify;">Estando en este apartado le damos clic en agregar una nueva key y la agregamos.</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu5.png">
</p>

<p style="text-align: justify;">Luego de tener la llave SSH configurada procedemos a crear un repositorio, para crearlo se debe ingresar el nombre del mismo, luego seleccionar si es un repositorio público o privado, posterior a esto se debe agregar un readme donde se encontrará la explicación del repositorio y por último se da clic en create repository.</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu6.png">
</p>

<p style="text-align: justify;">Luego de crear el repositorio se debe crear una rama para el desarrollo y dependiendo del modelo de trabajo escogido, en este caso se crea la rama gh-pages.</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu7.png">
</p>

<p style="text-align: justify;">Luego se debe clonar el repositorio con el siguiente comando.</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu8.png">
</p>

<p style="text-align: justify;">Donde la url será la que se toma del git de la parte de SSH.</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu9.png">
</p>

<p style="text-align: justify;">Luego de clonar el repositorio se ingresa al repositorio clonado.</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu10.png">
</p>

<p style="text-align: justify;">Después de ingresar se da clic izquierdo en el archivo README.md y le damos abrir con visual studio code.</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu11.png">
</p>

<p style="text-align: justify;">Una vez se abre el archivo anterior podremos hacer las modificaciones necesarias con el fin de subir toda la información al repositorio.</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu12.png">
</p>

<p style="text-align: justify;">Después de agregar toda la información o si desea subirse alguna actualización o modificación al Git hub, se de hacer de la siguiente manera:</p>  

Se ejecutan estos comandos con el fin de que los cambios queden con nuestro usuario 
- git config --global core.autocrlf false
- git config --global user.name "Angel Amarillo"
- git config --global user.email angelseb1799@gmail.com  

Luego se ejecutan los siguientes comandos con el fin de subir los cambios completos 
- git add .
- git commit -m "Acá se debe escribir el comentario con el cual se va a subir los cambios"

<p style="text-align: justify;">En rama debe ir el nombre de la rama donde se subirá el archivo
git push origin rama.</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu13.png">
</p>

<p style="text-align: justify;">Luego si vamos a la página principal de git se puede observar que se subió el cambio exitosamente.</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu14.png">
</p>

<p style="text-align: justify;">De esta forma se puede realizar los cambios necesarios de forma local y luego subirlos al repositorio en git hub.</p>
<p style="text-align: justify;">De igual forma se cuenta con una Shell la cual nos permite realizar la clona y actualización de los repositorios de forma más automatizada el código es el que se muestra a continuación.</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu15.png">
  <img src="/Taller1_Docker/ImageCuentas/Cu16.png">
  <img src="/Taller1_Docker/ImageCuentas/Cu17.png">
</p>

<p style="text-align: justify;">Ahora crearemos una cuenta en docker para ellos ingresamos primero al siguiente link, https://hub.docker.com/, luego damos clic en registrarnos ingresando nuestro usuario, correo electrónico de preferencia y una contraseña segura.</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu18.png">
</p>

<p style="text-align: justify;">Luego de ingresar observaremos la siguiente pantalla donde tendremos la posibilidad de buscar las imágenes que necesitas en el buscador y luego descargarlas, lo mismo que ya podríamos hacer uso del docker, se puede crear repositorios, ingresando el nombre del mismo también.</p>

<p align="center">
  <img src="/Taller1_Docker/ImageCuentas/Cu19.png">
  <img src="/Taller1_Docker/ImageCuentas/Cu20.png">
</p>