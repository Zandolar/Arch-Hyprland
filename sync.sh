#!/bin/bash

ln -s /home/matt/Arch-Hyprland/* /home/matt
ln -s /home/matt/Arch-Hyprland/.config/* /home/matt/.config
cp -s /home/matt/Arch-Hyprland/.local/share/icons/* /home/matt/.local/share/icons
cp -r /home/matt/Arch-Hyprland/Breeze-Noir-Dark /usr/share/sddm/themes
cp /home/matt/Arch-Hyprland/sddm.conf /etc
mkdir /home/matt/Pictures
cp /home/matt/Arch-Hyprland/wallpaper.png home/matt/Pictures
cp /home/matt/Arch-Hyprland/hyprland-wrapped.desktop /usr/share/wayland-sessions
