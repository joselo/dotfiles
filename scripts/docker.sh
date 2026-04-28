#!/bin/bash
set -e

echo "Installing Docker..."
sudo pacman -S --needed docker docker-compose

echo "Enabling and starting Docker service..."
sudo systemctl enable --now docker

echo "Adding $USER to the docker group..."
sudo usermod -aG docker "$USER"

echo "Docker $(docker --version) ready!"

# Reminder about group changes
echo "Note: You may need to log out and back in for the group changes to take effect."

# Check for kernel mismatch (common in Arch Linux after updates)
RUNNING_KERNEL=$(uname -r)
INSTALLED_KERNEL=$(pacman -Q linux | awk '{print $2}')

if [[ "$INSTALLED_KERNEL" != *"$RUNNING_KERNEL"* ]]; then
  echo -e "\n\033[0;33m[!] WARNING: Kernel mismatch detected.\033[0m"
  echo "    Running: $RUNNING_KERNEL"
  echo "    Installed: $INSTALLED_KERNEL"
  echo "    Docker will likely fail to start until you reboot your system."
fi
