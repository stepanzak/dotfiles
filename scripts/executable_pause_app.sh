#!/bin/bash

PID=$(niri msg --json focused-window | jq '.["pid"]')

state=$(ps -o stat= -p "$PID")

if [[ "$state" == *"T"* ]]; then
	kill -CONT "$PID"
else
	kill -STOP "$PID"
fi
