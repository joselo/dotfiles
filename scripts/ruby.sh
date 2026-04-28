#!/bin/bash
set -e

echo "Installing Ruby and build dependencies..."
sudo pacman -S --needed ruby base-devel

echo "Configuring Ruby environment..."
# Ensure the directory exists
mkdir -p "$HOME/.ruby"

# Set GEM_HOME for the current session
export GEM_HOME="$HOME/.ruby"
export PATH="$GEM_HOME/bin:$PATH"

echo "Installing Bundler..."
gem install bundler

echo "Ruby $(ruby --version | awk '{print $2}') and Bundler $(bundle --version | awk '{print $3}') ready!"
