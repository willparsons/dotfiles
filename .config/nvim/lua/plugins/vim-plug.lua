local Plug = vim.fn["plug#"]
local path = vim.fn.stdpath('data') .. '/plugged'

vim.call("plug#begin", path)

Plug ('kaicataldo/material.vim', { branch = 'main' })

-- LSP
Plug 'neovim/nvim-lspconfig'

-- Rust tools
Plug 'simrat39/rust-tools.nvim'

-- Completion framework
Plug 'hrsh7th/nvim-cmp'

-- LSP completion source for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'

-- Snippet completion source for nvim-cmp
Plug 'hrsh7th/cmp-vsnip'

-- Other usefull completion sources
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'

-- Snippet engine
Plug 'hrsh7th/vim-vsnip'

-- Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

-- Treeshitter
Plug ('nvim-treesitter/nvim-treesitter', {
    ['do'] = function()
        vim.cmd("TSUpdate")
    end
})  -- We recommend updating the parsers on update

-- jk
Plug 'max397574/better-escape.nvim'

-- Buffer line
Plug 'kyazdani42/nvim-web-devicons' -- Recommended (for coloured icons)
Plug 'ryanoasis/vim-devicons'  -- Icons without colours
Plug 'akinsho/bufferline.nvim'

vim.call("plug#end")
