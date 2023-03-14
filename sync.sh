#!/bin/bash

ln -s ~/Arch-Hyprland/* ~
ln -sf ~/Arch-Hyprland/.config/* ~/.config
ln -sf ~/Arch-Hyprland/.firedragon ~/.firedragon
ln -sf ~/Arch-Hyprland/.librewolf ~/.librewolf
ln -sf ~/Arch-Hyprland/DoomEmacs ~/DoomEmacs
ln -sf ~/Arch-Hyprland/Spacemacs ~/Spacemacs
ln -sf ~/Arch-Hyprland/.emacs.d ~/.emacs.d
ln -sf ~/Arch-Hyprland/.mozilla ~/.mozilla
ln -sf ~/Arch-Hyprland/.librewolf ~/.librewolf
ln -sf ~/Arch-Hyprland/.firedragon ~/.firedragon

sudo cp -r ~/Arch-Hyprland/Breeze-Noir-Dark /usr/share/sddm/themes
mkdir ~/Pictures
cp ~/bluewallpaper.png ~/Pictures/wallpaper.png
sudo cp ~/Arch-Hyprland/hyprland-wrapped.desktop /usr/share/wayland-sessions
