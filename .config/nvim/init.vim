set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
" Tabs and indenting
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.
set cursorline
set showcmd

set number relativenumber       " Display line numbers
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
syntax enable
set path+=**
" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
set completeopt=menuone,noselect
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*
" Plugins
call plug#begin('~/.vim/plugged')
" Solidity 
Plug 'tomlion/vim-solidity'

"Sintaxy highlight for weird things
Plug 'sheerun/vim-polyglot'

" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'folke/lsp-colors.nvim'

"Completion
Plug 'nvim-lua/completion-nvim'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

" Debugger Plugins
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

" Galaxy Bar
Plug 'glepnir/galaxyline.nvim', { 'branch': 'main' }
Plug 'kyazdani42/nvim-web-devicons'

" Color Schemes
Plug 'gruvbox-community/gruvbox'
Plug 'eddyekofo94/gruvbox-flat.nvim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'yashguptaz/calvera-dark.nvim'

" telescope requirements...
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim', {'do' : 'make'}

" Popup
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'

" Explorer
Plug 'kyazdani42/nvim-tree.lua'

" HARPOON!!
Plug 'mhinz/vim-rfc'

" prettier
Plug 'sbdchd/neoformat'

" for pairs
Plug 'cohama/lexima.vim'

" React Development
Plug 'leafgarland/typescript-vim'
Plug 'yuezk/vim-js'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
Plug 'peitalin/vim-jsx-typescript'
Plug 'mlaursen/vim-react-snippets'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'neoclide/vim-jsx-improve'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
call plug#end()

" Enable true colors
if (has('termguicolors'))
  set termguicolors
endif

" ColorScheme
"let g:material_theme_style = 'darker'
"colorscheme material
"Vim-Script:
" Calavera settings
let g:calvera_italic_comments = 1
let g:calvera_italic_keywords = 1
let g:calvera_italic_functions = 1
let g:calvera_contrast = 1

colorscheme calvera

" require and source
lua require('lsp')
lua require('statusbar')
lua require('lv-compe')
lua require('lv-treesitter')
lua require('lv-telescope')
lua require('lsp/efm')
source $HOME/.config/nvim/vim-plug/nvim-tree.vim

" >> Lsp key bindings
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <C-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K     <cmd>Lspsaga hover_doc<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-p> <cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <C-n> <cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> gf    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> gn    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> ga    <cmd>Lspsaga code_action<CR>
xnoremap <silent> ga    <cmd>Lspsaga range_code_action<CR>
nnoremap <silent> gs    <cmd>Lspsaga signature_help<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

"Completion
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
" Avoid showing message extra message when using completion
set shortmess+=c

