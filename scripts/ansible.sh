#!/bin/bash
set -e

echo "Installing Ansible..."
sudo pacman -S --needed ansible

echo "Ansible $(ansible --version | head -n 1) ready!"
