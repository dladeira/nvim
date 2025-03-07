local vim = vim

require('user/plugins')
require('user/keymaps')
require("user/options")

require('toggleterm').setup()
require('hardtime').setup()

require("mason").setup()

require('formatter').setup()

vim.cmd.colorscheme('catppuccin')

require('neo-tree').setup({
    event_handlers = {
    {
            event = "file_open_requested",
            handler = function()
            vim.cmd("Neotree close")
            end
        },
    }
})

--[[
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd("Neotree show left")
    end,
})
--]]

-- telescope

require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ["<C-s>"] = "select_vertical",
            }
        }
    }
}

-- ale

vim.g.ale_fixers = { ['typescript'] = { 'prettier', "eslint", }, ['javascript'] = { 'prettier', "eslint", }, ['*'] = { 'remove_trailing_lines', 'trim_whitespace', 'prettier' } }
vim.g.ale_fix_on_save = 1
vim.g.ale_completion_enabled = 1
