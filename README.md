## Table of contents
- [Neovim](#neovim)
	- [packer.nvim](#packernvim)
	- [telescope.nvim](#telescopenvim)
		- [ripgrep](#ripgrep)
	- [Color scheme](#color-scheme)
	- [nvim-treesitter](#nvim-treesitter)
- [Alacritty](#alacritty)
	- [Color scheme](#color-scheme-1)
- [i3](#i3)
	- [Rofi](#rofi)
		- [Color scheme](#color-scheme-2)
		- [Papirus icon theme](#papirus-icon-theme)
		- [Rofi emoji](#rofi-emoji)
			- [Noto Fonts Emoji](#noto-fonts-emoji)
			- [xclip](#xclip)
			- [xdotool](#xdotool)
- [TODO](#todo)

# Neovim

**Dependencies**
- packer.nvim
- telescope.nvim
  - ripgrep
  - nvim.treesitter
 
## packer.nvim

_Plugin manager_

* Repo: [https://github.com/wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
* Use `:PackerSync` to sync packages
	
## telescope.nvim

_Fuzzy finder_

* Repo: [https://github.com/nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
* Use `:checkhealth telescope` to check for missing dependencies

### ripgrep

_Search tool_

* Repo: [https://github.com/BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
* Can be installed using many popular package managers `apt, pacman, dnf...`

## Color scheme

* Repo: [https://github.com/rose-pine/neovim](https://github.com/rose-pine/neovim)
* Use `:PackerSync` to sync packages

## nvim-treesitter

* Repo: [https://github.com/nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* Use `:PackerSync` to sync packages

---

# Alacritty

## Color scheme

* Using Git submodule
* Repo: https://github.com/alacritty/alacritty-theme


# i3

## Rofi

_A window switcher, Application launcher and dmenu replacement._

* Repo: https://github.com/davatorium/rofi

	```bash
	sudo pacman -S rofi
	```

### Color scheme

* Using Git submodule
* Repo: https://github.com/newmanls/rofi-themes-collection

### Papirus icon theme

_Icon theme, used by Rofi_

* Repo: https://github.com/PapirusDevelopmentTeam/papirus-icon-theme

	```bash
	sudo pacman -S papirus-icon-theme
	```

### Rofi emoji

_Emoji picker for Rofi_

* Repo: https://github.com/Mange/rofi-emoji#usage

	```bash
	sudo pacman -S rofi-emoji
	```

#### Noto Fonts Emoji

_Font to be used with rofi-emoji_

* Package: https://archlinux.org/packages/extra/any/noto-fonts-emoji/

	```bash
	sudo pacman -S noto-fonts-emoji
	```

#### xclip

_Command line clipboard utility for X11 systems_

* Repo: https://github.com/astrand/xclip
* Possibly also used by **Neovim**

	```bash
	sudo pacman -S xclip
	```

#### xdotool

_x11 automation tool. (Rofi uses it for simulating keyboard input)_

* Repo: https://github.com/jordansissel/xdotool

	```bash
	sudo pacman -S xdotool
	```

---

# TODO

* Set up commit signing
* 