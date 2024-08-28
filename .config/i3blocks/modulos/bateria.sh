#!/bin/sh

estado=$(acpi -a | awk '{print $3}')
bateria=$(acpi -b | grep -oP '\d+(?=%)' | head -n 1)

if [ $estado = "on-line" ]; then
	if [ $bateria -ge 51 ] && [ $bateria -le 100 ]; then
		echo "󰚥$bateria"
	else
		if [ $bateria -ge 50 ] && [ $bateria -le 31 ]; then 
			echo "󰚥$bateria"
		else
			if [ $bateria -ge 0 ] && [ $bateria -le 30 ]; then
				echo "󰚥$bateria"
			fi
		fi
	fi
else
	if [ $bateria -ge 51 ] && [ $bateria -le 100 ]; then
		echo "󰁹$bateria"
	else
		if [ $bateria -ge 50 ] && [ $bateria -le 31 ]; then 
			echo "󰁾$bateria"
		else
			if [ $bateria -ge 0 ] && [ $bateria -le 30 ]; then
				echo "󰁼$bateria"
			fi
		fi
	fi
fi
