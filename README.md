# My Dotfiles

This repository contains the `dotfiles` for the tools I use regularly.

## Requirements

* Git: <https://git-scm.com/>
* Zsh: <https://linux.die.net/man/1/zsh>
* Curl: <https://curl.se/>
* yay (AUR helper) — installed automatically by `install.sh`

## 1. Clone the Repository

```
git clone git@github.com:joselo/dotfiles.git ~/.dotfiles
```

## 2. Run the Install Script

```
cd ~/.dotfiles
chmod +x install.sh
sh install.sh
```

This will:
- Install `yay` if not present
- Install all packages via `pacman` and `yay`
- Create symlinks for `nvim` and `.gitconfig`
- Generate `~/.zshrc`
- Set `zsh` as the default shell

## 3. Log Out and Log Back In

`chsh` requires a full session restart to take effect — closing the terminal is not enough.

## 4. Open Neovim

```
nvim
```

`lazy.nvim` will auto-install on the first launch and install all plugins automatically.

## 5. Development Tools (optional)

Run only the scripts you need:

```
sh ~/.dotfiles/scripts/postgres.sh
sh ~/.dotfiles/scripts/elixir.sh
sh ~/.dotfiles/scripts/ansible.sh
```

---

# Dev Notes

## PostgreSQL Tasks

Start PostgreSQL:

```
sudo systemctl start postgresql
```

Create a superuser:

```
createuser --superuser postgres
```

Connect to PostgreSQL:

```
psql -U postgres
```

## Font Tasks

Search for a font:

```
fc-list : family | grep -i jetbrains
```

---

# Keyboard Shortcuts

## Neovim Key Bindings

### Leader Key

* **Leader**: `Space`

### Basic Navigation & Editing

* `Tab` (visual mode): Indent selection
* `Shift+Tab` (visual mode): Dedent selection
* `<leader>s`: Quick search and replace word under cursor
* `<leader>y` (visual mode): Copy selection to clipboard
* `<leader>Y`: Copy line to clipboard

### Buffer Management

* `<leader>n`: Next buffer
* `<leader>p`: Previous buffer
* `<leader>x`: Close buffer

### Tab Management

* `Ctrl+Left`: Previous tab
* `Ctrl+Right`: Next tab
* `Ctrl+\`: New tab

### File & Search Operations (FZF)

* `Ctrl+p`: Find files
* `Ctrl+b`: Browse open buffers
* `Ctrl+g`: Live grep (search text in files)
* `Ctrl+f`: Search lines in current buffer
* `<leader>dw`: Show workspace diagnostics

### File Explorer

* `-`: Open parent directory (Oil)
* `<leader>-`: Open Triptych file explorer

### Terminal

* `Ctrl+t`: Open new terminal
* `Esc` (in terminal): Exit terminal mode
* `Ctrl+Left/Down/Up/Right` (in terminal): Navigate between windows

### Code Comments

* `gcc`: Toggle comment on current line
* `gc` (visual mode): Toggle comment on selection

