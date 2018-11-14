#!/usr/bin/env bash

icon="$HOME/.config/i3/icons/lock.png"
tmpbg='/tmp/screeni3lock.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -blur 0x8 "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"
