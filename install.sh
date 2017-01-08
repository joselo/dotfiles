#!/bin/bash

echo "Install powerline"
sudo pacman -S powerline powerline-fonts

echo "Install oh-my-zsh" 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Install powerlevel9k"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/themes/powerlevel9k
