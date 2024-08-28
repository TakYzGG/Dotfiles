#!/bin/sh

brillo=$(brightnessctl get)

if [ $brillo -ge 51 ] && [ $brillo -le 100 ]; then
	echo "󰃠$brillo"
else
	if [ $brillo -ge 50 ] && [ $brillo -le 31 ]; then 
		echo "󰃟$brillo"
	else
		if [ $brillo -ge 0 ] && [ $brillo -le 30 ]; then
			echo "󰃞$brillo"
		fi
	fi
fi
