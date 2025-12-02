#!/bin/bash

# RepoHub Installation Script for Ubuntu
# Generated on 2025-12-02T18:00:58.592Z
# This script is idempotent and safe to run multiple times

set -e

echo "Starting package installation for Ubuntu..."

# Update package lists
echo "Updating package lists..."
sudo apt update

# Install packages
echo "Installing packages: steam stacer neofetch synaptic timeshift obs-studio mpv ffmpeg vlc git curl wget ksnip kdeconnect smplayer mpv bibata-cursor-theme"
sudo apt install -y steam stacer neofetch synaptic timeshift obs-studio mpv ffmpeg vlc git curl wget ksnip kdeconnect smplayer mpv bibata-cursor-theme

# Verify installation
echo "Verifying installation..."
for package in steam stacer neofetch synaptic timeshift obs-studio mpv ffmpeg vlc git curl wget ksnip kdeconnect smplayer mpv bibata-cursor-theme; do
    if dpkg -l | grep -q "^ii  $package "; then
        echo "✓ $package installed successfully"
    else
        echo "✗ $package installation failed"
    fi
done

echo "Installation completed!"