#!/bin/bash

# Install RPM Fusion repository for nonfree packages
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Update packages
sudo dnf update -y

# Install desired packages
sudo dnf install -y discord polybar rofi vlc neovim kcolorchooser kitty flameshot timeshift

# Install Python (if not already installed)
sudo dnf install -y python3

# Install pip (if not already installed)
sudo dnf install -y python3-pip

# Install pywal using pip
sudo pip3 install pywal

# Set hostname to "field"
sudo hostnamectl set-hostname "field"

rsync -av /run/media/strwbry/2247-2752/strwbry/.config/polybar/ ~/.config/polybar/
rsync -av /run/media/strwbry/2247-2752/strwbry/.config/rofi/ ~/.config/rofi/
rsync -av /run/media/strwbry/2247-2752/strwbry/.config/picom/ ~/.config/picom/
rsync -av /run/media/strwbry/2247-2752/strwbry/.config/i3/ ~/.config/i3/
rsync -av /run/media/strwbry/2247-2752/strwbry/.config/neofetch/ ~/.config/nitrogen/

echo "Setup completed."

