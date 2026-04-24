#!/usr/bin/bash
set -oue pipefail

### Install LightDM + greeter
rpm-ostree install \
    lightdm \
    lightdm-gtk \
    lightdm-gtk-greeter \
    lightdm-gtk-greeter-settings

### Install Hyprland + Wayland tools
rpm-ostree install \
    hyprland \
    waybar \
    wofi \
    kitty \
    swww \
    wl-clipboard \
    grim \
    slurp \
    xdg-desktop-portal-hyprland \
    xdg-desktop-portal-gtk

### Install KDE Plasma
rpm-ostree install \
    plasma-desktop \
    plasma-workspace \
    kde-settings \
    konsole \
    dolphin

### Enable LightDM (bootc-compatible)
mkdir -p /etc/systemd/system/display-manager.service.wants
ln -s /usr/lib/systemd/system/lightdm.service /etc/systemd/system/display-manager.service.wants/lightdm.service
