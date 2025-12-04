# Tmux Configuration

A comprehensive tmux configuration with plugins, vim-style keybindings, and a beautiful Ayu theme.

## What is tmux?

**tmux** (terminal multiplexer) is a powerful terminal application that allows you to:

- **Split your terminal** into multiple panes and windows
- **Detach and reattach** sessions - your work persists even if you close your terminal
- **Share terminal sessions** with others
- **Run processes in the background** that survive disconnections

## Installation

### macOS

```bash
brew install tmux
```

### Ubuntu/Debian

```bash
sudo apt install tmux
```

### Arch Linux

```bash
sudo pacman -S tmux
```

## Setting Up This Configuration

### 1. Clone the dotfiles repository

```bash
git clone <your-repo-url> ~/dotfiles
```

### 2. Create the tmux config directory

```bash
mkdir -p ~/.config/tmux
```

### 3. Symlink the configuration file

```bash
ln -sf ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf
```

### 4. Install TPM (Tmux Plugin Manager)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### 5. Install plugins

Launch tmux and press `Prefix + I` (capital I) to install plugins.

## Basic Usage

### Starting tmux

```bash
# Start a new session
tmux

# Start a new named session
tmux new -s mysession

# List existing sessions
tmux ls

# Attach to an existing session
tmux attach -t mysession

# Kill a session
tmux kill-session -t mysession
```

### The Prefix Key

This configuration uses **`Ctrl + Space`** as the prefix key (default is `Ctrl + b`).

> ⚠️ **macOS Users**: Disable the Mac shortcut for switching input sources with Ctrl+Space in `System Settings > Keyboard > Keyboard Shortcuts > Input Sources`

All tmux commands start with the prefix key. For example, to split a window:
1. Press `Ctrl + Space`
2. Release
3. Press the command key (e.g., `-` for horizontal split)

## Keybindings Reference

### Session Management

| Keybinding | Action |
|------------|--------|
| `Prefix + s` | Show session selector |
| `Prefix + d` | Detach from session |
| `Prefix + $` | Rename session |

### Window Management

| Keybinding | Action |
|------------|--------|
| `Prefix + c` | Create new window (in current path) |
| `Prefix + ,` | Rename window |
| `Prefix + n` | Next window |
| `Prefix + p` | Previous window |
| `Prefix + 0-9` | Switch to window by number |
| `Prefix + &` | Kill window |

### Pane Management

| Keybinding | Action |
|------------|--------|
| `Prefix + -` | Split pane horizontally |
| `Prefix + _` | Split pane vertically |
| `Prefix + h/j/k/l` | Resize pane (vim-style) |
| `Prefix + m` | Maximize/minimize pane |
| `Prefix + x` | Kill pane |
| `Ctrl + h/j/k/l` | Navigate between panes (vim-tmux-navigator) |

### Copy Mode (vim-style)

| Keybinding | Action |
|------------|--------|
| `Prefix + [` | Enter copy mode |
| `v` | Start selection (in copy mode) |
| `y` | Copy selection (in copy mode) |
| `Prefix + P` | Paste copied text |
| `q` | Exit copy mode |

### Other

| Keybinding | Action |
|------------|--------|
| `Prefix + r` | Reload tmux configuration |
| `Prefix + I` | Install plugins (TPM) |
| `Prefix + U` | Update plugins (TPM) |

## Installed Plugins

| Plugin | Description |
|--------|-------------|
| [tpm](https://github.com/tmux-plugins/tpm) | Tmux Plugin Manager |
| [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) | Seamless navigation between tmux panes and vim splits |
| [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect) | Persist tmux sessions across restarts |
| [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum) | Automatic session saving every 15 minutes |
| [tmux-ayu-theme](https://github.com/TechnicalDC/tmux-ayu-theme) | Beautiful Ayu color theme |

## Features

- **Session Persistence**: Your sessions are automatically saved and restored after computer restart
- **Vim Integration**: Seamless navigation between Neovim and tmux panes with `Ctrl + h/j/k/l`
- **Mouse Support**: Click to select panes, resize with drag, scroll through history
- **System Clipboard**: Copy/paste integrates with your system clipboard
- **256 Colors + True Color**: Full color support for modern terminal applications
- **1-Based Indexing**: Windows and panes start at 1 (easier to reach on keyboard)

## Troubleshooting

### Theme not applying correctly

Kill the tmux server and clear cache:

```bash
tmux kill-server && rm -rf /tmp/tmux-*
```

### Ctrl+Space not working on macOS

Disable the input source switching shortcut:
1. Open **System Settings**
2. Go to **Keyboard > Keyboard Shortcuts > Input Sources**
3. Disable "Select the previous input source" and "Select the next input source"

### Plugins not loading

1. Ensure TPM is installed in `~/.tmux/plugins/tpm`
2. Press `Prefix + I` to install plugins
3. Restart tmux

## Learning Resources

- [tmux Cheat Sheet](https://tmuxcheatsheet.com/)
- [Official tmux Wiki](https://github.com/tmux/tmux/wiki)
- [The Tao of tmux](https://leanpub.com/the-tao-of-tmux/read)
