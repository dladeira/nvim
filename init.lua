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

vim.call('plug#end')

vim.cmd.colorscheme('catppuccin')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set('n', '<C-b>', '<Cmd>Neotree focus right<CR>')

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd("Neotree show right")
    end,
})

require("user.options")
