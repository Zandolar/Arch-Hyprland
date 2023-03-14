#!/bin/bash
PACMAN_APPS="ark bluez blueman brightnessctl cargo chromium cifs-utils discord dolphin dunst emacs ffmpegthumbs firefox flatpak font-manager fuse2 gimp gtk2 gtk3 gtk4 kdelibs4support kio kdialog kitty kvantum libwnck3  micro neofetch nm-connection-editor nmap otf-font-awesome packagekit-qt5 pavucontrol-qt plasma-framework plasma-workspace powerline-fonts qt5-wayland qt6-wayland qt5ct rust samba swaybg vlc xdg-desktop-portal"

PARU_APPS="arcolinux-logout catch2-git firedragon hyprland-git librewolf nordic-darker-theme nwg-look otf-font-awesome-4 otf-font-awesome-5 overseerr sddm-git sddm-config-editor-git sirula waybar-hyprland-git wev xdg-desktop-portal-hyprland-git"

pacman -S $PACMAN_APPS --noconfirm

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru -S $PARU_APPS  f--sudoloop

sh ~/Arch-Hyprland/sync.sh

systemctl enable sddm.service
systemctl enable bluetooth.service
