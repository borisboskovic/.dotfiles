## Table of contents
- [Neovim](#neovim)
	- [packer.nvim](#packernvim)
	- [telescope.nvim](#telescopenvim)
		- [ripgrep](#ripgrep)
- [Alacritty](#alacritty)
- [i3](#i3)
- [TODO](#todo)

# Neovim

**Dependencies**
- packer.nvim
- telescope.nvim
  - ripgrep
 
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

---



# Alacritty

- [ ] Add list of dependencies

# i3

- [ ] Add list of dependencies

# TODO
- [ ] Set default editor by exporting EDITOR variable from `.zshrc` (or similar file)
  
  ```bash
	export EDITOR='nvim'
  ```