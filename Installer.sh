#!/bin/bash
PACMAN_APPS="ark bluez blueman brightnessctl chromium discord cargo cifs-utils dolphin dunst ffmpegthumbs firefox flatpak font-manager fuse2 gimp gtk2 gtk3 gtk4 kdelibs4support kio kdialog kitty kvantum libwnck3 micro neofetch networkmanager nmap otf-font-awesome packagekit-qt5 plasma-framework powerline-fonts qt5ct rust samba vlc xdg-desktop-portal"
PARU_APPS="arcolinux-logout catch2-git hyprland-git nordic-darker-theme nwg-look otf-font-awesome-4 otf-font-awesome-5 overseerr sddm-git sddm-config-editor-git sirula waybar-hyprland-git wev xdg-desktop-portal-hyprland-git"

sudo pacman -Sy $PACMAN_APPS

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru -Sy $PARU_APPS

sh ~/Arch-Hyprland/sync.sh

systemctl enable sddm.service
systemctl enable bluetooth.service 
