#!/bin/sh

bateria=$(acpi -b | grep -oP '\d+(?=%)' | head -n 1)
if [ $bateria -ge 51 ] && [ $bateria -le 100 ]; then
	echo "󰁹$bateria"
fi

if [ $bateria -ge 50 ] && [ $bateria -le 31 ]; then 
	echo "󰁾$bateria"
fi

if [ $bateria -ge 0 ] && [ $bateria -le 30 ]; then
	echo "󰁼$bateria"
fi
