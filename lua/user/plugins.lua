local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' }) -- Fancy highlighting
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' }) -- Cool theme
-- Plug('MunifTanjim/prettier.nvim') -- Prettier code formatting

Plug('nvim-lua/telescope.nvim', { ['tag'] = '0.1.8' }) -- File searcher
Plug('nvim-neo-tree/neo-tree.nvim', { ['branch'] = 'v3.x' }) -- File tree
Plug('dense-analysis/ale')
Plug('akinsho/toggleterm.nvim', { ['tag'] = '*' })
-- Plug('numToStr/Comment.nvim')
-- Plug('pmizio/typescript-tools.nvim')

Plug('BurntSushi/ripgrep') -- Dependency for telescope
Plug('nvim-lua/plenary.nvim') -- Dependency for telescope and null-ls, util functions

Plug('nvim-tree/nvim-web-devicons') -- File icons for telescope and neo-tree
Plug('MunifTanjim/nui.nvim') -- Dependency for neo-tree

Plug('m4xshen/hardtime.nvim')

vim.call('plug#end')
