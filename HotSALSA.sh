#!/bin/bash
pactl set-sink-volume @DEFAULT_SINK@ 100%

if [ -z "$1" ]; then
    amixer -q set Master toggle
    amixer -q set Headphone toggle
    notify-send -i audio-card "HotSALSA" "Toggled mute all"
    exit 1
fi

amixer set Master $1 unmute > /dev/null
hs_msg="Synced to $(amixer set Headphone $1 unmute | grep -Po '\[.+?dB]' -m 1)"
notify-send -i audio-card "HotSALSA" "$hs_msg"
echo "$hs_msg"
