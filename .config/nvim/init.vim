call plug#begin(stdpath('data') . '/plugged')
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

" LSP
Plug 'neovim/nvim-lspconfig'

" Rust tools
Plug 'simrat39/rust-tools.nvim'

" Completion framework
Plug 'hrsh7th/nvim-cmp'

" LSP completion source for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'

" Snippet completion source for nvim-cmp
Plug 'hrsh7th/cmp-vsnip'

" Other usefull completion sources
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'

" Snippet engine
Plug 'hrsh7th/vim-vsnip'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Treeshitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" jk
Plug 'max397574/better-escape.nvim'

" Buffer line
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim'

Plug 'glepnir/dashboard-nvim'

" TODO: Maybe which key?
call plug#end()

lua require("will")

let mapleader = " "

inoremap <C-c> <Esc><cr>

" Move lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup stuffs
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup end

