#!/bin/bash

echo "Installing Caddy..."
sudo pacman -S --needed caddy

echo "Enabling and starting Caddy..."
sudo systemctl enable --now caddy

echo "Caddy ready!"
