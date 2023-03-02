#!/bin/bash

cd ~
find ~/Arch-Hyprland -mindepth 1 -depth -type d -printf "%P\n" | while read dir; do mkdir -p "$dir"; done
find ~/Arch-Hyprland -type f -printf "%P\n" | while read file; do ln -s "~/Arch-Hyprland/$file" "$file"; done

#ln -s ~/Arch-Hyprland/* ~
#ln -s ~/Arch-Hyprland/.config/* ~/.config
#ln -s ~/Arch-Hyprland/.emacs.d/
cp -s ~/Arch-Hyprland/.local/share/icons/* ~/.local/share/icons
sudo cp -r ~/Arch-Hyprland/Breeze-Noir-Dark /usr/share/sddm/themes
sudo cp ~/Arch-Hyprland/hyprland-wrapped.desktop /usr/share/wayland-sessions
