## Table of contents
- [Neovim](#neovim)
	- [packer.nvim](#packernvim)
	- [telescope.nvim](#telescopenvim)
		- [ripgrep](#ripgrep)
	- [Color scheme](#color-scheme)
	- [nvim-treesitter](#nvim-treesitter)
		- [tree-sitter](#tree-sitter)
		- [fd](#fd)
	- [lsp-zero.nvim](#lsp-zeronvim)
		- [lspkind](#lspkind)
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
    - tree-sitter
    - fd
- lsp-zero.nvim
  - onsails/lspkind-nvim
    - nerd font
 
## packer.nvim

_Plugin manager_

* Repo: [https://github.com/wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
* Installed with `Packer` (or other plugin manager)
	
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
* Installed with `Packer` (or other plugin manager)

## nvim-treesitter

On Windows, for treesitter to work it was necessary to add following line to it's config:

```lua
	require 'nvim-treesitter.install'.compilers = { "clang" }
```

* Repo: [https://github.com/nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* Installed with `Packer` (or other plugin manager)

### tree-sitter

* Repo: [https://github.com/tree-sitter/tree-sitter](https://github.com/tree-sitter/tree-sitter)
* Can be installed with `cargo install tree-sitter-cli` or `npm install tree-sitter-cli`
* Use `:TSInstallInfo` to show installed / available languages

### fd

* Repo [https://github.com/sharkdp/fd](https://github.com/sharkdp/fd)
* Can be installed using many popular package managers `apt, pacman, dnf...`

## lsp-zero.nvim

* **LSP** language support
* Repo [https://github.com/VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
* Installed with `Packer` (or other plugin manager)
* Use `:Mason` to add/remove support for languages
* Use `:LspInfo` to show **LSP** status

### lspkind
* Adds icons to **LSP** suggestions
* Repo [https://github.com/onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim)
* Needs some of the Nerd fonts to show icons (https://www.nerdfonts.com/font-downloads) (I used _FiraCode Nerd Font Mono_)


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

_X11 automation tool. (Rofi uses it for simulating keyboard input)_

* Repo: https://github.com/jordansissel/xdotool

	```bash
	sudo pacman -S xdotool
	```

---

# TODO

* Set up commit signing
* Configure PolyBar
* Configure Picom
* Fix Polybar and i3 behavior with multiple monitors
* Integrate volumeicon with polybar
* Integrate i3 resize with polybar
* powerlevel10k and oh-my-zsh
* i3 scratchpads
* Neovim (watch Prime)
* VSCodium, add WakaTime
* Use and describe `:checkhealth` in Nvim
* 