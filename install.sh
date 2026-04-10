#!/bin/bash

# Install yay if not present
if ! command -v yay &> /dev/null; then
  echo "Installing yay..."
  sudo pacman -S --needed git base-devel
  git clone https://aur.archlinux.org/yay.git /tmp/yay
  cd /tmp/yay && makepkg -si --noconfirm
  cd ~/.dotfiles
fi

# Ensure config directory exists
mkdir -p ~/.config

# Install packages
echo "Installing packages..."
sudo pacman -S --needed \
  fd fzf nodejs \
  inotify-tools lazygit neovim kitty github-cli \
  ripgrep zsh git curl less \
  ttf-jetbrains-mono-nerd \
  bat xclip npm

yay -S --needed zsh-pure-prompt

# Create symlinks
echo "Creating symlinks..."
ln -sf ~/.dotfiles/config/nvim ~/.config/nvim
ln -sf ~/.dotfiles/config/kitty ~/.config/kitty
ln -sf ~/.dotfiles/gitconfig ~/.gitconfig

# Generate .zshrc
echo "Generating .zshrc..."
cat > ~/.zshrc << 'EOF'
# My Zsh config
if [[ -f ~/.dotfiles/zsh ]]; then
  source ~/.dotfiles/zsh
fi
EOF

# Change default shell to zsh
echo "Setting zsh as default shell..."
chsh -s $(which zsh)

echo "Done! Log out and log back in for zsh to take effect"
