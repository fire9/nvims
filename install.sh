#!/bin/bash

# Clone to /tmp/nvims and run from there.
git clone https://github.com/Traap/nvims /tmp/traap/nvims
cd /tmp/traap/nvims

# Copy files to their production locations.
sudo cp -v nvims /usr/bin/.
sudo chmod -v +x /usr/bin/nvims

# Create config directory and copy files there.
mkdir -p "$HOME"/.config/nvims
cp -v neovim_distros "$HOME"/.config/nvims/.
touch "$HOME"/.config/nvims/default_config

# Cleanup temporary directory.
rm -rfv /tmp/traap
