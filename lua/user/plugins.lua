local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' })
Plug('nvim-lua/plenary.nvim')
Plug('nvim-lua/telescope.nvim', { ['tag'] = '0.1.8' })
Plug('nvim-tree/nvim-web-devicons')
Plug('MunifTanjim/nui.nvim')
Plug('nvim-neo-tree/neo-tree.nvim', { ['branch'] = 'v3.x' })
Plug('neovim/nvim-lspconfig')
Plug('jose-elias-alvarez/null-ls.nvim')
Plug('MunifTanjim/prettier.nvim')
Plug('dense-analysis/ale')
Plug('numToStr/Comment.nvim')
Plug('pmizio/typescript-tools.nvim')

vim.call('plug#end')
