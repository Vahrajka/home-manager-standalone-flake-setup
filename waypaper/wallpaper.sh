#!/usr/bin/env bash

sleep 1

WALLPAPER=$(awww query | head -n1 | awk '{print $8}')

wal -i $WALLPAPER
systemctl --user restart waybar
wal-cache
