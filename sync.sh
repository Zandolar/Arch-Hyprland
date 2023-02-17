#!/bin/bash

ln -s ~/Arch-Hyprland/* ~
ln -s ~/Arch-Hyprland/.config/* ~/.config
cp -s ~/Arch-Hyprland/.local/share/icons/* ~/.local/share/icons
sudo cp -r ~/Arch-Hyprland/Breeze-Noir-Dark /usr/share/sddm/themes
sudo cp ~/Arch-Hyprland/sddm.conf /etc
mkdir ~/Pictures
cp ~/Arch-Hyprland/wallpaper.png ~/Pictures
sudo cp ~/Arch-Hyprland/hyprland-wrapped.desktop /usr/share/wayland-sessions
