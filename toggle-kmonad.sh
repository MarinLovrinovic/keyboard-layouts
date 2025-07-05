#!/bin/bash

CONFIG=~/proj/config/keyboard-layouts/laptop_layout.kbd
PIDFILE=/tmp/kmonad.pid

if [ -f "$PIDFILE" ] && kill -0 "$(cat $PIDFILE)" 2>/dev/null; then
  echo "Stopping kmonad..."
  notify-send "Kmonad" "Kmonad stopped."
  kill "$(cat $PIDFILE)"
  rm "$PIDFILE"
else
  echo "Starting kmonad..."
  notify-send "Kmonad" "Kmonad started."
  kmonad "$CONFIG" &
  echo $! > "$PIDFILE"
fi