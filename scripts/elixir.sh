#!/bin/bash

echo "Installing Elixir..."
sudo pacman -S --needed elixir erlang

echo "Elixir $(elixir --version) ready!"
