#!/bin/bash

# Install RPM Fusion repository for nonfree packages
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Update packages
sudo dnf update -y

# Install desired packages
sudo dnf install -y discord polybar rofi vlc neovim kcolorchooser kitty flameshot timeshift

# Set hostname to "field"
sudo hostnamectl set-hostname "field"

# Copy .config folder from flash drive to home directory (adjust path accordingly)

rsync -av /run/media/strwbry/2247-2752/strwbry/.config/polybar/ ~/.config/polybar/
rsync -av /run/media/strwbry/2247-2752/strwbry/.config/rofi/ ~/.config/rofi/
rsync -av /run/media/strwbry/2247-2752/strwbry/.config/picom/ ~/.config/picom/

echo "Setup completed."
