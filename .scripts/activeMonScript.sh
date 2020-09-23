#! /bin/sh

first='first'

while true; do
	monitor=$(bspc query -M -d --names)
	if [ $first != $monitor ]; then
		kill $pid

		if [ $monitor = 'DisplayPort-0' ]; then
			exec polybar active1 &
		elif [ $monitor = 'DisplayPort-1' ]; then
			exec polybar active2 &
		elif [ $monitor = 'DisplayPort-2' ]; then
			exec polybar active3 &
		elif [ $monitor = 'HDMI-A-0' ]; then
			exec polybar active4 &
		fi
		
		pid=$(ps | grep polybar | tail -n1 | head -c7)
		first=$monitor
	fi
done
