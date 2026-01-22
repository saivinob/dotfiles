#!/bin/bash
#picom &
#~/.fehbg &

#dte() {
#	echo -n "$(date +%H:%M)"
#}
#
#batt() {
#	battcap="$(cat /sys/class/power_supply/BAT0/capacity)"
#	battstat="$(cat /sys/class/power_supply/BAT0/status)"
#	echo "Batt: $battcap%, $battstat"
#}
#
#net() {
#	net="$(cat /sys/class/net/wlan0/operstate)"
#	echo "Wireless: $net"
#}

while true; do
#	xsetroot -name " $(net) | $(batt) | $(dte) "
	xsetroot -name " $(dwm_net) | $(dwm_power) | $(dwm_clock) "
	sleep 1m  # or 60 (default in seconds)
done
