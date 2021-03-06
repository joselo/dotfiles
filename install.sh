#!/bin/bash

echo "Installing powerline"
sudo pacman -S powerline powerline-fonts

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing powerlevel9k"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/themes/powerlevel9k

echo "Installing ttf-hackfont"
sudo pacman -S ttf-hack

echo "Installing Ag The Silver Searcher"
sudo pacman -S the_silver_searcher

echo "Installing Ack"
sudo pacman -S ack

echo "Installing Yarn and other dependencies"
sudo pacman -S yarn
sudo yarn global add prettier eslint eslint-plugin-vue

echo "Installing wmctrl for fullscreen mode with gvim"
sudo pacman -S wmctrl
