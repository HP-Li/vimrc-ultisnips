#!/bin/bash
feh --recursive --randomize --bg-fill ~/Pictures
compton --backend glx --paint-on-overlay --glx-no-stencil --vsync opengl-swc --unredir-if-possible &
#nohup compton >/dev/null 2>&1 &
while true
do
	mute=$(amixer -D pulse get Master|tail -n 1|cut -d[ -f3|cut -d] -f1)
	vol=$(amixer -D pulse get Master|tail -n 1|cut -d[ -f2|cut -d] -f1)
	status=$(cat /sys/class/power_supply/BAT1/status)
	electric=$(cat /sys/class/power_supply/BAT1/capacity)
	if [[ $status == D* ]];then
		status='未充电'
	elif [[ $electric != 100 ]];then
		status='充电中'
	else
		status='已充满'
	fi
	if [[ $mute == on ]];then
		sound='vol:'$vol
	else
		sound='[mute]'
	fi
	xsetroot -name "| $sound $(date +'%F %T') [$status]:$electric"
	sleep 1
done
