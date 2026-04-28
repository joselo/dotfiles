#!/bin/bash
set -e

echo "Installing sshpass..."
sudo pacman -S --needed sshpass

echo "sshpass $(sshpass -V | head -n 1) ready!"
