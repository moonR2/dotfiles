# Moonify's dotfiles

This repo contains my system configuration files. I keep them here for convenience as this allows me to easily access my files from any computer. Also, you may like my settings and it will be useful to check my files.
**Note**: My operating system is Arch Linux so be careful and better check what you are copying. On the other hand, if you have Arch, I will be creating a script so that my AwesomeWM configuration works out of the box.
## [AwesomeWM](https://github.com/moonR2/dotfiles/tree/master/.config/awesome "AwesomeWM")
### Screenshot
![AwesomeWM](https://github.com/moonR2/dotfiles/blob/33cf121231f967a98de6d4db6fbb35cde69299ce/.screenshots/2021-07-10_08-46.png?raw=true "AwesomeWM")
### Install
(in progress)
### Modules
- [Bling](https://github.com/BlingCorp/bling "Bling")
- [Layout-machi](https://github.com/xinhaoyuan/layout-machi "Layout-machi")
- [Keyboard-layout-indicator](https://github.com/deficient/keyboard-layout-indicator "Keyboard-layout-indicator")

### Keybindings
There are many keyboard shortcuts but I will leave the most important.

|  Key | Combinations   |  Description |
| ------------ | ------------ | ------------ |
|Super| j,k  | Move between windows   |
|  Super | Enter  | Spawn Terminal (Alacritty)  |
| Super  | d   | Rofi launcher   |
| Super  | q  | Quit window  |
|  Super | x  | Exit system options  |
|  Super | 1,2,3,4,5  | Move between workspaces  |
|  L-shift | R-shift  | Change keyboard layout  |
|  Super | b  | Spawn Brave  |
| Super  | F1  | Show all keybindings  |

### Credits
Credits to [JavaCafe01](https://github.com/JavaCafe01/awedots "JavaCafe01"). Most of the AwesomeWM configuration is from his repo.
## Neovim
### Screenshot
![Neovim](https://github.com/moonR2/dotfiles/blob/33cf121231f967a98de6d4db6fbb35cde69299ce/.screenshots/2021-07-10_08-50.png?raw=true)

### Requires
- [Nvim 5.0](https://github.com/neovim/neovim "Nvim 5.0")
- [Plug](https://github.com/junegunn/vim-plug "Plug")

### Features
- [LSP](https://github.com/neovim/nvim-lspconfig "LSP"): With the native LSP implementation of Nvim 5.0.
- [Telescope](https://github.com/nvim-telescope/telescope.nvim "Telescope"): The new fuzzy finder for Nvim 5.0.
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter "Treesitter:"): For parsing and awesome sintax highlight
- [Nvim-tree](https://github.com/kyazdani42/nvim-tree.lua "Nvim-tree"): The file explorer
- The configuration is ready for React development.
- Coloscheme: [Calvera](https://github.com/yashguptaz/calvera-dark.nvim "Calvera")
