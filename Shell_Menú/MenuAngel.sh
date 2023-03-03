while :
do
	echo "BIENVENIDO AL MENU"
    echo ""
	echo "1. Cambiar nombre del servidor"
	echo "2. Cambiar particion de los discos"
	echo "3. Cambiar IP del servidor"
	echo "4. Cambiar tabla de host"
	echo "5. Agregar permisos de Firewall"
	echo "6. Editar DNS del Server"
	echo "7. Configurar Proxy"
	echo "8. Salir del menu"
	echo "-------------------------------"
	read -p "Ingrese el numero de la accion que deseada realizar: " opcion
	echo "-------------------------------"
	case "$opcion" in
		"1")
			echo "Este es el nombre actual del servidor:"
			echo ""
			hostname
            echo ""
            while :
            do
                echo "1. Cambiar nombre del servidor"
                echo "2. Volver al menu principal"
                echo ""
                read -p "Ingrese el numero de la opcion que desea realizar: " num
                echo ""
                case $num in
                    1)
                        read -p "Digite el nuevo nombre del servidor: " nombre
                        sudo hostnamectl set-hostname "$nombre"
                        clear
                        echo "El cambio de nombre fue exitoso"
                        echo ""
                        hostnamectl
                        echo "-------------------------------------------"
                    ;;
                    2)
						clear
                        break
                    ;;
                    *)
                        clear
						echo "Opcion Invalida, revisar las opciones"
                        echo ""
                    ;;
                esac 
            done
            ;;
		"2")
			echo "Estos son los discos actuales de su maquina"
			sudo fdisk -l
			echo ""
			read -p "Ingrese el nombre del disco sobre el cual realizara el proceso: " disco
			echo ""
			sudo fdisk /dev/$disco

			;;
		"3")
			echo "Esta es la seccion para modificar la IP servidor"
			echo ""
			while :
            do
				echo "Estas son las IP actuales de su red"
				echo ""
				ip addr show
				echo ""
				echo "Estas son las opciones que puede seleccionar"
				echo ""
                echo "1. Instalar net-tools para poder realizar las configuraciones"
                echo "2. Modificar IP de una interfaz de red"
				echo "3. Configurar interfaz de Red dinamica"
				echo "4. Volver al menu principal"
                echo ""
                read -p "Ingrese el numero de la opcion que desea: " num1
                echo ""
                case $num1 in
                    1)
                        sudo apt install net-tools
						clear
						echo "El net-tools ha sido instalado correctamente"
						echo ""
                    ;;
					2)
						read -p "Ingrese el nombre de la interfaz que desea modificar: " red
						echo ""
						read -p "Ingrese la nueva IP: " IPn
						echo ""
						read -p "Ingrese la mascara de red: " mask
						sudo ifconfig $red $IPn netmask $mask
						clear
						echo "El cambio de IP se ha realizado satisfactoriamente"
						echo ""
					;;
					3)
						read -p "Ingrese el nombre de la interfaz que desea volver dinamica: " red1
						sudo dhclient $red1
						clear
						echo "La IP de la interfaz $red1 se ha reestablecido correctamente"
						echo ""
						ip addr show
					;;
                    4)
						clear
                        break
                    ;;
                    *)
                        clear
						echo "Opcion Invalida, revisar las opciones"
                        echo ""
                    ;;
                esac 
            done
			;;
		"4")
			while :
            do
				echo "Estas son las opciones que puede seleccionar"
				echo ""
                echo "1. Configurar tabla Host"
                echo "2. Volver al menu principal"
                echo ""
                read -p "Ingrese el numero de la opcion que desea: " num1
                echo ""
                case $num1 in
                    1)
                        sudo nano /etc/hosts
                        clear
                        echo "La tabla de Hosts ha sido modificada"
						echo ""
						cd && cd /etc && cat hosts
                        echo "-------------------------------------------"
                    ;;
                    2)
						clear
                        break
                    ;;
                    *)
                        clear
						echo "Opcion Invalida, revisar las opciones"
                        echo ""
                    ;;
                esac 
            done
			;;
		"5")
			echo "En esta seccion podra configurar permisos de Firewall"
			echo ""
			while :
			do
				echo "Estas son las opciones de permisos de Firewall"
				echo ""
				echo "1. Habilitar servicio"
				echo "2. Conocer el estado del firewall"
				echo "3. Habilitar puerto TCP"
				echo "4. Habilitar puerto UDP"
				echo "5. Habilitar rango puerto TCP"
				echo "6. Habilitar rango puerto UDP"
				echo "7. Probar con curl"
				echo "8. Volver al menu principal"
				echo "----------------------------------"
				read -p "Ingrese el numero de la opcion que deseada realizar: " num2
				echo "----------------------------------"
				case $num2 in
					1)
						sudo ufw enable
						echo ""
					;;
					2)
						sudo ufw status
						echo ""
					;;
					3)
						read -p "Ingrese el puerto TCP: " TCP
						sudo ufw allow $TCP/tcp
						echo ""
					;;
					4)
						read -p "Ingrese el puerto UDP: " UDP
						sudo ufw allow $UDP/udp
						echo ""
					;;
					5)
						sudo ufw allow 30000:32767/tcp
						echo ""
					;;
					6)
						sudo ufw allow 30000:32767/udp
						echo ""
					;;
					7)
						read -p "Ingrese la IP: " IP1
						echo ""
						read -p "Ingrese el puerto: " puertop
						echo ""
						curl -v telnet://$IP1:$puertop
						echo ""
					;;
					8)
						clear
                        break
					;;
					*)
                        clear
						echo "Opcion Invalida, revisar las opciones"
                        echo ""
                    ;;
				esac
			done 
			;;
		"6")
			echo "En esta seccion podra configurar DNS Server"
			echo ""
			while :
			do
				echo "Estas son las opciones para editar el DNS"
				echo "1. Instalar resolvconf"
				echo "2. Habilitar servicio DNS"
				echo "3. Detener servicio DNS"
				echo "4. Estado del servicio DNS"
				echo "5. Reiniciar servicio DNS"
				echo "6. Editar DNS"
				echo "7. Volver al menu principal"
				echo "----------------------------------"
				read -p "Ingrese el numero de la opcion que desea realizar: " num3
				echo "----------------------------------"
				case $num3 in
					1)
						sudo apt install resolvconf 
						echo ""
					;;
					2)
						sudo service resolvconf start
						echo ""
					;;
					3)
						sudo service resolvconf stop
						echo ""
					;;
					4)
						sudo service resolvconf status
						echo ""
					;;
					5)
						sudo service resolvconf restart
						echo ""
					;;
					6)
						sudo nano /etc/resolv.conf 
						echo ""
						cat /etc/resolv.conf
						echo ""
					;;
					7)
						clear
                        break
					;;
					*)
                        clear
						echo "Opcion Invalida, revisar las opciones"
                        echo ""
                    ;;
				esac
			done
			;;
		"7")
			echo "En esta seccion podra configurar Proxy"
			echo "---------------------------------------"
			echo "Configuracion estandar del archivo Proxy"
			echo ""
			echo 'PROXY_ENABLED="yes"'
			echo 'HTTP_PROXY="ip:puerto"'
			echo 'HTTPS_PROXY="ip:puerto"'
			echo 'FTP_PROXY="ip:puerto"'
			echo 'NO_PROXY="localhost,127.0.01,"'
			echo ""
			echo "IMPORTANTE: RECUERDE COPIAR LA CONFIGURACION PROXY AL FINAL DEL DOCUMENTO"
			echo ""
			while :
            do
				echo "Estas son las opciones que puede seleccionar"
				echo ""
                echo "1. Configurar Proxy"
                echo "2. Volver al menu principal"
                echo ""
                read -p "Ingrese el numero de la opcion que desea realizar: " num4
                echo ""
                case $num4 in
					1)
						cd && sudo nano .bashrc  
						clear
						echo "El proxy ha sido modificado"
						echo ""
					;;
					2)
						clear
                        break
                    ;;
                    *)
                        clear
						echo "Opcion Invalida, revisar las opciones"
                        echo ""
                    ;;
                esac 
            done
			;;
		"8")
			clear
			exit 0
		;;
        *)
            clear
            echo "Accion invalida por favor revisar las opciones"
            echo ""
        ;;
	esac
done