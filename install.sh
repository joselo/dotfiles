#!/bin/bash

echo "Install powerline"
sudo pacman -S powerline powerline-fonts

echo "Install oh-my-zsh" 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
