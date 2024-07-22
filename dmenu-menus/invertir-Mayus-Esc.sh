#!/bin/sh
#creador: TakYzGG

opciones="Activar\nDesactivar\nCancelar"
selec=$(echo -e $opciones | dmenu -i -p "Invertir Mayus/Esc" -fn "UbuntuMonoNerdFontMono-12" -nb "#2E3440" -nf "#4C566A" -sb "#5E81AC" -sf "#D8DEE9")
case $selec in
	Activar)
		setxkbmap -option caps:swapescape ;;	
	Desactivar)
		setxkbmap -option ;;
	Cancelar)
		exit 0 ;;
esac
