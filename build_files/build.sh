#!/usr/bin/bash
set -oue pipefail

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
    xdg-desktop-portal-hyprland

### OPTIONAL: Replace SDDM with LightDM
# rpm-ostree install \
#     lightdm \
#     lightdm-gtk \
#     lightdm-gtk-greeter \
#     lightdm-gtk-greeter-settings
#
# mkdir -p /etc/systemd/system/display-manager.service.wants
# ln -s /usr/lib/systemd/system/lightdm.service /etc/systemd/system/display-manager.service.wants/lightdm.service
