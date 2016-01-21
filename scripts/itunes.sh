#! /bin/bash

osascript -e 'tell application "iTunes" to if player state is playing then "Now Playing: " & name of current track & " - " & artist of current track'
