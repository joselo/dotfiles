#!/bin/bash
set -e

echo "Installing Docker and plugins..."
sudo pacman -S --needed docker docker-compose docker-buildx

echo "Enabling and starting Docker service..."
sudo systemctl enable --now docker

echo "Adding $USER to the docker group..."
sudo usermod -aG docker "$USER"

# Apply group changes to the socket just in case
sudo chown root:docker /var/run/docker.sock

echo "Docker $(docker --version) ready!"
echo "Buildx $(docker buildx version) ready!"

echo -e "\n\033[0;32m[!] IMPORTANT:\033[0m"
echo "To apply Docker group permissions, you MUST either:"
echo "1. Run 'newgrp docker' in this terminal session."
echo "2. Log out and log back in (recommended)."

# Check for kernel mismatch
RUNNING_KERNEL=$(uname -r)
INSTALLED_KERNEL=$(pacman -Q linux | awk '{print $2}')

if [[ "$INSTALLED_KERNEL" != *"$RUNNING_KERNEL"* ]]; then
  echo -e "\n\033[0;33m[!] WARNING: Kernel mismatch detected.\033[0m"
  echo "    Running: $RUNNING_KERNEL"
  echo "    Installed: $INSTALLED_KERNEL"
  echo "    Docker will likely fail to start until you reboot your system."
fi
