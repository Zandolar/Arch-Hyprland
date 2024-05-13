#!/bin/bash

wal -i "/home/matt/Pictures/Wallpapers/Wallpaper"
killall waybar
pkill waybar
waybar&
