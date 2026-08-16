# dotfiles

Personal configuration files managed with a simple sync script.

## Usage

```bash
# Save system configs to repo
./sync in

# Apply configs from repo to system
./sync out
```

## Structure

```text
.
├── config
│   ├── .bashrc
│   ├── .gitconfig
│   ├── .tmux.conf
│   ├── .vimrc
│   ├── .zshrc
│   ├── alacritty
│   │   └── alacritty.toml
│   ├── ghostty
│   │   ├── config.ghostty
│   │   └── shaders
│   │       ├── cursor_sweep.glsl
│   │       ├── cursor_tail.glsl
│   │       ├── cursor_warp.glsl
│   │       ├── rectangle_boom_cursor.glsl
│   │       ├── ripple_cursor.glsl
│   │       ├── ripple_rectangle_cursor.glsl
│   │       └── sonic_boom_cursor.glsl
│   ├── nvim
│   │   └── init.lua
│   └── yazi
│       ├── keymap.toml
│       └── yazi.toml
├── README.md
└── sync
```
