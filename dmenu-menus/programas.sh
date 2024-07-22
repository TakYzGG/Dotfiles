#/bin/sh
# Creador: TakYzGG

opciones="Lxterminal\nFirefox\nGestor de archivos\nAccesorios\nMultimedia\nLibre Office\nCancelar"
selec=$(echo $opciones | dmenu -i -p "Elige una opcion")
case $selec in
	Lxterminal)
		lxterminal
		;;
	Firefox)
		firefox
		;;
	"Gestor de archivos")
		Thunar
		;;

	Accesorios)
		accesorios="Calculadora\nVisor de PDF\nEditor de texto\nGestor de discos\nVisor de imagenes\nGestor de archivos\nControlador de volumen\nCancelar"
		selec=$(echo $accesorios | dmenu -i -p "Elige una opcion")
		case $selec in
			Calculadora)
				galculator
				;;
			"Visor de PDF")
				xreader
				;;
			"Editor de texto")
				leafpad
				;;
			"Gestor de discos")
				gparted
				;;
			"Visor de imagenes")
				mirage
				;;
			"Gestor de archivos")
				Thunar
				;;
			"Compresor de archivos")
				xarchiver
				;;
			"Controlador de volumen")
				pavucontrol
				;;
			Cancelar)
				exit 0
				;;
		esac
		;;

	Multimedia)
		multimedia="Reproductor de video\nReproductor de musica\nCancelar"
		selec=$(echo $multimedia | dmenu -i -p "Elige una opcion")
		case $selec in
			"Reproductor de video")
				vlc
				;;
			"Reproductor de musica")
				audacious
				;;
			Cancelar)
				exit 0
				;;
		esac
		;;

	"Libre Office")
		office="Word\nExel\nDibujo\nPowerpoint\nBases de datos\nEditor de formulas\nCancelar"
		selec=$(echo $office | dmenu -i -p "Elige una opcion")
		case $selec in
			Word)
				libreoffice --writer
				;;
			Exel)
				libreoffice --calc
				;;
			Dibujo)
				libreoffice --draw
				;;
			Powerpoint)
				libreoffice --impress
				;;
			"Bases de datos")
				libreoffice --base
				;;
			"Editor de formulas")
				libreoffice --math
				;;
			Cancelar)
				exit 0
				;;
		esac
		;;

	Cancelar)
		exit 0
		;;
esac
