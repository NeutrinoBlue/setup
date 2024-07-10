#!/bin/bash

# Install RPM Fusion repository for nonfree packages
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Update packages
sudo dnf update -y

# Install desired packages
sudo dnf install -y discord polybar rofi vlc neovim kcolorchooser kitty

# Set hostname to "field"
sudo hostnamectl set-hostname "field"

# Copy .config folder from flash drive to home directory (adjust path accordingly)
cp -r /path/to/flash/drive/.config ~/.

echo "Setup completed."