#!/bin/bash

find ~/Pictures/Wallpapers/Wallpaper/ -type f -print0 | xargs -0 mv -t ~/Pictures/Wallpapers/
mv "$(find ~/Pictures/Wallpapers -type f | shuf -n 1)" ~/Pictures/Wallpapers/Wallpaper/
rm ~/Arch-Hyprland/.config/rofi/.current_wallpaper
ln ~/Pictures/Wallpapers/Wallpaper/*.jpg ~/Arch-Hyprland/.config/rofi/.current_wallpaper
swaybg --image ~/Pictures/Wallpapers/Wallpaper/*.jpg --mode fill
