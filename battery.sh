#!/bin/bash

#battery percentage script designed for ThinkPad T61 and tmux

bat_now=$( cat /sys/class/power_supply/BAT0/energy_now )
bat_tot=$( cat /sys/class/power_supply/BAT0/energy_full )

percent=$( echo "scale=8; 100 / $bat_tot * $bat_now" | bc )
final=$( printf %.0f $( echo "$percent" ) )

if [ "$final" -lt 20 ] ; then
  printf "#[fg=red]"
elif [ "$final" -lt 50 ] ; then
  printf "#[fg=brightyellow]"
fi

printf "$final"

printf "%%#[default]"
