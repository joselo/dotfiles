#!/bin/bash

echo "Installing powerline"
sudo pacman -S powerline powerline-fonts

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing powerlevel9k"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/themes/powerlevel9k

echo "Installing ttf-hackfont"
sudo pacman -S ttf-hack

echo "Installing Yarn and other dependencies"
sudo pacman -S yarn
sudo yarn global add prettier

echo "Installing Ag The Silver Searcher"
sudo pacman -S the_silver_searcher

echo "Installing eslint"
sudo pacman -S eslint
