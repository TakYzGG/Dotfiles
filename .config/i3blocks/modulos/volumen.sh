#!/bin/sh

volumen=$(pamixer --get-volume-human | grep -oP '\d+(?=%)' | head -n 1)
muteado=$(pamixer --get-mute)

if [ $muteado = "true" ]; then
	echo "󰖁mute"
else
	if [ $volumen -ge 51 ] && [ $volumen -le 100 ]; then
		echo "󰕾$volumen"
	else
		if [ $volumen -ge 0 ] && [ $volumen -le 50 ]; then
			echo "󰖀$volumen"
		else
			if [ $volumen -eq 0 ]; then 
				echo "󰝟$volumen"
			fi
		fi
	fi
fi
