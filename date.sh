#!/bin/bash
feh --recursive --randomize --bg-fill --no-fehbg ~/Pictures
#nohup compton -CGd >/dev/null 2>&1 &
#compton -CGb --config /home/haipeng/.config/compton.conf
compton --backend glx --paint-on-overlay --glx-no-stencil --vsync opengl-swc --unredir-if-possible &
while true
do
	mute=$(amixer -D pulse get Master|tail -n 1|cut -d[ -f3|cut -d] -f1)
	vol=$(amixer -D pulse get Master|tail -n 1|cut -d[ -f2|cut -d] -f1)
	if [[ $mute == on ]];then
		sound='vol:'$vol
	else
		sound='[mute]'
	fi
	xsetroot -name "| $sound $(date +'%F %T %A') "
	sleep 1
done
