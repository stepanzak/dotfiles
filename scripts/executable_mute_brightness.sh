#!/bin/bash
current_brightness=$(brightnessctl get)
if [ "$current_brightness" -gt 0 ]; then
	echo "$current_brightness" >/tmp/brightness_before_muted
	brightnessctl set 0
else
	brightnessctl set "$(cat "/tmp/brightness_before_muted")"
fi
