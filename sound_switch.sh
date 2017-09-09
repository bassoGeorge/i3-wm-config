#!/bin/bash

# Switches the audio card between sink 0 (HDMI) and sink 1 (internal)
# Works only when something is playing though

CURRENT_SINK=$(pacmd list-sink-inputs | grep "sink: " | sed 's/\t//' | sed 's/^ *//' | cut -d ' ' -f2)

if [ "$CURRENT_SINK" -eq "0" ]; then
    NEW_SINK="1"
else
    NEW_SINK="0"
fi

pacmd set-default-sink $NEW_SINK
pacmd list-sink-inputs | grep "index:" | sed 's/\t//' | sed 's/^ *//' | cut -d ' ' -f2 | xargs -n1 --replace="PLAYBACK" pacmd move-sink-input PLAYBACK $NEW_SINK
