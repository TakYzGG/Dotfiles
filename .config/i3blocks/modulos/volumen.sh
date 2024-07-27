#!/bin/sh

volumen=$(amixer get Master | grep -oP '\d+(?=%)' | head -n 1)
muteado=$(amixer get Master | grep -oP '\[off\]')

if [ $muteado = "[off]" ]; then
	echo "󰖁mute"

else
if [ $volumen -ge 51 ] && [ $volumen -le 100 ]; then
	echo "󰕾$volumen"
fi

if [ $volumen -ge 0 ] && [ $volumen -le 50 ]; then
	echo "󰖀$volumen"
fi

if [ $volumen -eq 0 ]; then 
	echo "󰝟$volumen"
fi

fi
