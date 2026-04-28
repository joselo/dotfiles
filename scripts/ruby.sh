#!/bin/bash
set -e

echo "Installing Ruby and core libraries (ERB, OStruct, Base64)..."
# In Ruby 3.4, these core libraries are packaged separately in Arch
sudo pacman -Syu --needed ruby ruby-erb ruby-ostruct ruby-base64 base-devel

echo "Ruby $(ruby --version | awk '{print $2}') installed and complete!"
