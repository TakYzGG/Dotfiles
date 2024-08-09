#/bin/sh
# Creador: TakYzGG

opciones="Lxterminal\nFirefox\nGestor de archivos\nAccesorios\nMultimedia\nLibre Office\nCancelar"
selec=$(echo $opciones | dmenu -i -p "Elige una opcion" -fn "UbuntuMonoNerdFontMono-12" -nb "#2E3440" -nf "#4C566A" -sb "#5E81AC" -sf "#D8DEE9")
case $selec in
	Lxterminal)
		lxterminal ;;
	Firefox)
		firefox ;;
	"Gestor de archivos")
		Thunar ;;

	Accesorios)
		accesorios="Calculadora\nVisor de PDF\nEditor de texto\nGestor de discos\nVisor de imagenes\nGestor de archivos\nControlador de volumen\nCancelar"
		selec=$(echo $accesorios | dmenu -i -p "Elige una opcion" -fn "UbuntuMonoNerdFontMono-12" -nb "#2E3440" -nf "#4C566A" -sb "#5E81AC" -sf "#D8DEE9")
		case $selec in
			Calculadora)
				galculator ;;
			"Visor de PDF")
				xreader ;;
			"Editor de texto")
				leafpad ;;
			"Gestor de discos")
				password=$(echo ":v"| dmenu -i -p "Ingresa la contraseña" -fn "UbuntuMonoNerdFontMono-12" -nb "#2E3440" -nf "#4C566A" -sb "#5E81AC" -sf "#D8DEE9")
				echo $password | sudo -S gparted ;;
			"Visor de imagenes")
				mirage ;;
			"Gestor de archivos")
				Thunar ;;
			"Compresor de archivos")
				xarchiver ;;
			"Controlador de volumen")
				pavucontrol ;;
			Cancelar)
				exit 0 ;;
		esac ;;

	Multimedia)
		multimedia="Reproductor de video\nReproductor de musica\nCancelar"
		selec=$(echo $multimedia | dmenu -i -p "Elige una opcion" -fn "UbuntuMonoNerdFontMono-12" -nb "#2E3440" -nf "#4C566A" -sb "#5E81AC" -sf "#D8DEE9")
		case $selec in
			"Reproductor de video")
				vlc ;;
			"Reproductor de musica")
				audacious ;;
			Cancelar)
				exit 0 ;;
		esac ;;

	"Libre Office")
		office="Word\nExel\nDibujo\nPowerpoint\nBases de datos\nEditor de formulas\nCancelar"
		selec=$(echo $office | dmenu -i -p "Elige una opcion" -fn "UbuntuMonoNerdFontMono-12" -nb "#2E3440" -nf "#4C566A" -sb "#5E81AC" -sf "#D8DEE9")
		case $selec in
			Word)
				libreoffice --writer ;;
			Exel)
				libreoffice --calc ;;
			Dibujo)
				libreoffice --draw ;;
			Powerpoint)
				libreoffice --impress ;;
			"Bases de datos")
				libreoffice --base ;;
			"Editor de formulas")
				libreoffice --math ;;
			Cancelar)
				exit 0 ;;
		esac ;;

	Cancelar)
		exit 0
		;;
esac
