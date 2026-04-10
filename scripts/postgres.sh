#!/bin/bash

echo "Installing PostgreSQL..."
sudo pacman -S --needed postgresql

echo "Initializing PostgreSQL..."
sudo -u postgres initdb -D /var/lib/postgres/data
sudo systemctl enable --now postgresql
sudo -u postgres createuser --superuser $USER

echo "PostgreSQL ready!"
