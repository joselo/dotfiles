# My Dotfiles

This repository contains the `dotfiles` for the tools I use regularly.

## Requirements

- Git: https://git-scm.com/
- Homebrew: https://brew.sh/
- Zsh: https://linux.die.net/man/1/zsh
- Curl: https://curl.se/

## 1. Installing the Tools

> To install Homebrew, follow the instructions on the official website:
> https://brew.sh/

Install the system tools:

	sudo apt update && sudo apt install zsh git curl -y

## 2. Clone the Repository

	git clone git@github.com:joselo/dotfiles.git ~/.dotfiles

## 3. Install Homebrew Formulas

	cd ~/.dotfiles/
	brew bundle

## 4. Create Symlinks

I use `nvim`, `kitty`, and a custom `.gitconfig` file. Create the symlinks as needed:

	ln -s ~/.dotfiles/config/nvim ~/.config/nvim
	ln -s ~/.dotfiles/config/kitty ~/.config/kitty
	ln -s ~/.dotfiles/gitconfig ~/.gitconfig

## 5. Configure Zsh

Set `zsh` as your default shell:

	chsh -s $(which zsh)

Log out of your current session (simply closing the terminal is not enough).

Then, open a new terminal and choose option 2.

Edit your `~/.zshrc` file:

	nano ~/.zshrc

Add the following block at the end of the file:

	# My Zsh config
	if [[ -f ~/.dotfiles/zsh ]]; then
	  source ~/.dotfiles/zsh
	fi

Finally, close and reopen the terminal. You can now launch `nvim`.

# Dev Notes

## Postgres Tasks

Start PostgreSQL

	brew services start postgresql

Create a superuser

	createuser --superuser postgres

Connect to PostgreSQL

	psql -U postgres

## Homebrew Tasks

Backup your Brewfile:

	brew bundle dump --file=~/.dotfiles/Brewfile

## Font Tasks

Search for a font:

	fc-list : family | grep -i jetbrains

# Keyboard Shortcuts

## Neovim Key Bindings

### Leader Key
- **Leader**: `Space`

### Basic Navigation & Editing
- `Tab` (visual mode): Indent selection
- `Shift+Tab` (visual mode): Dedent selection
- `<leader>s`: Quick search and replace word under cursor
- `<leader>y` (visual mode): Copy selection to clipboard
- `<leader>Y`: Copy line to clipboard

### Buffer Management
- `<leader>n`: Next buffer
- `<leader>p`: Previous buffer
- `<leader>x`: Close buffer

### Tab Management
- `Ctrl+Left`: Previous tab
- `Ctrl+Right`: Next tab
- `Ctrl+\`: New tab

### File & Search Operations (FZF)
- `Ctrl+p`: Find files
- `Ctrl+b`: Browse open buffers
- `Ctrl+g`: Live grep (search text in files)
- `Ctrl+f`: Search lines in current buffer
- `<leader>dw`: Show workspace diagnostics

### File Explorer
- `-`: Open parent directory (Oil)
- `<leader>-`: Open Triptych file explorer

### Terminal
- `Ctrl+t`: Open new terminal
- `Esc` (in terminal): Exit terminal mode
- `Ctrl+Left/Down/Up/Right` (in terminal): Navigate between windows

### Code Comments
- `gcc`: Toggle comment on current line
- `gc` (visual mode): Toggle comment on selection

## Kitty Terminal Key Bindings

### Tab Management
- `Ctrl+Shift+t`: New tab with current working directory

### Disabled Shortcuts
- `Ctrl+Tab` and `Ctrl+Shift+Tab`: Disabled to allow nvim navigation

