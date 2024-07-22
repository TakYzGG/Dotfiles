#/bin/sh
# Creador: TakYzGG

opciones="Apagar\nReiniciar\nCancelar"
selec=$(echo -e $opciones | dmenu -i -p "Elige una opcion" -fn "UbuntuMonoNerdFontMono-12" -nb "#2E3440" -nf "#4C566A" -sb "#5E81AC" -sf "#D8DEE9")
case $selec in
	Apagar)
		password=$(echo ":v"| dmenu -i -p "Ingresa la contraseña" -fn "UbuntuMonoNerdFontMono-12" -nb "#2E3440" -nf "#4C566A" -sb "#5E81AC" -sf "#D8DEE9")
		echo $password | sudo -S poweroff ;;
	Reiniciar)
		password=$(echo ":v"| dmenu -i -p "Ingresa la contraseña" -fn "UbuntuMonoNerdFontMono-12" -nb "#2E3440" -nf "#4C566A" -sb "#5E81AC" -sf "#D8DEE9")
		echo $password | sudo -S reboot ;;
	Cancelar)
		exit 0 ;;
esac
